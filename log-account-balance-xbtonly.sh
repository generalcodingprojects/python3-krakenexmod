log() {
  d="logs/$(date "+%Y/%m/%d/%H")"
  [ ! -d "$d" ] && mkdir -p "$d"
  echo "$1" >> "$d/$2.txt"
}
response="$(python3 -c "import api;k=api.API();k.load_key('kraken.key');print(k.query_private('Balance'))")"
xbt_amount_on_kraken="$(echo "$response" | tr "'" "\"" | tr -d " " | perl -ne '/"ZUSD":"(.*?)"/ && print $1')"
log "$(date "+%H:%M:%S") now on Kraken account:" "balance"
log "$xbt_amount_on_kraken XBT" "log_balance_xbtonly"
