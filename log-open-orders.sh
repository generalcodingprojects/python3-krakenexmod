log() {
  d="logs/$(date "+%Y/%m/%d/%H")"
  [ ! -d "$d" ] && mkdir -p "$d"
  echo "$1" >> "$d/$2.txt"
}
openorders_all="$(python3 -c "import api;k=api.API();k.load_key('kraken.key');print(k.query_private('OpenOrders'))")"
log "$openorders_all" "log_balance_allcurrencies"
