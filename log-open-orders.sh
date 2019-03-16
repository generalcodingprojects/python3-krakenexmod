log() {
  d="logs/$(date "+%Y/%m/%d/%H")"
  [ ! -d "$d" ] && mkdir -p "$d"
  echo "$1" >> "$d/$2.txt"
}
openorders_all="$(python3 -c "import api;k=api.API();k.load_key('kraken.key');print(k.query_private('OpenOrders'))")"
log "$openorders_all" "log_balance_allcurrencies"

#To format the output text (showing only the information in the 'order' field) use this (and remove line 7 above):
#echo "$openorders_all" | tr "'" "\"" | perl -ne '@orders =/"order":\s*"(.*?)"/g; print join("\n", @orders),"\n"'
#log "$openorders_all" "log_balance_allcurrencies"
