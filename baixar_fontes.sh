#!/bin/bash
# baixar_fontes.sh — baixa os ORIGINAIS de todas as fontes da pesquisa e gera manifesto com SHA-256.
# Uso (no Terminal do Mac, fora do Claude):
#   cd ~/Documents/pesquisa_politica
#   bash baixar_fontes.sh            # baixa tudo (pula o que já foi baixado com sucesso)
#   bash baixar_fontes.sh FLA        # baixa só as URLs cujos IDs começam com FLA
# Saídas:
#   fontes/originais/<n>_<ID>.<ext>        arquivos originais
#   fontes/originais/manifesto.tsv         n, ids, url, arquivo, http_status, bytes, sha256, data_utc
# Compatível com o bash 3.2 do macOS (usa curl e shasum, nativos do macOS).

set -u
cd "$(dirname "$0")" || exit 1
LISTA="fontes/lista_urls_consolidada.tsv"
DEST="fontes/originais"
MANIF="$DEST/manifesto.tsv"
FILTRO="${1:-}"
TAB=$'\t'
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 14_0) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15"

mkdir -p "$DEST"
[ -f "$MANIF" ] || printf "n\tids\turl\tarquivo\thttp_status\tbytes\tsha256\tdata_utc\n" > "$MANIF"

tail -n +2 "$LISTA" | while IFS=$'\t' read -r n ids url tipo; do
  [ -z "$url" ] && continue
  if [ -n "$FILTRO" ] && [[ "$ids" != *"$FILTRO"* ]]; then continue; fi
  id1="${ids%%|*}"
  ext="$tipo"; [ -z "$ext" ] && ext="bin"
  arq="$DEST/${n}_${id1}.${ext}"
  # pula se já baixado com sucesso
  if grep -q "^${n}${TAB}.*${TAB}200${TAB}" "$MANIF" 2>/dev/null && [ -s "$arq" ]; then
    continue
  fi
  status=$(curl -sS -L --compressed --retry 3 --retry-delay 5 --max-time 180 \
           -A "$UA" -o "$arq" -w "%{http_code}" "$url" 2>/dev/null)
  [ -z "$status" ] && status="000"
  if [ -f "$arq" ]; then
    bytes=$(wc -c < "$arq" | tr -d ' ')
    sha=$(shasum -a 256 "$arq" | cut -d' ' -f1)
  else
    bytes=0; sha=""
  fi
  data=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
  printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n" "$n" "$ids" "$url" "$arq" "$status" "$bytes" "$sha" "$data" >> "$MANIF"
  if [ "$status" = "200" ]; then echo "[ok  $status] $n $ids"; else echo "[FALHA $status] $n $ids $url"; fi
  sleep 1   # respeita os servidores públicos (evita HTTP 429)
done

echo
echo "Concluído. Manifesto: $MANIF"
echo "Resumo por status HTTP:"
tail -n +2 "$MANIF" | cut -f5 | sort | uniq -c
echo
echo "Observações:"
echo " - Páginas gov.br podem exigir CAPTCHA e o DOU (in.gov.br) pode recusar robôs: as falhas"
echo "   ficam no manifesto e podem ser baixadas manualmente pelo navegador (salvar como PDF)"
echo "   com o mesmo nome de arquivo; depois rode: shasum -a 256 <arquivo>"
echo " - Endpoints de API (dados abertos do Senado/Câmara/TCU/IBGE) são salvos como json/xml."
