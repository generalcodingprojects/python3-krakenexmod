openorders_all="$(python3 -c "import api;k=api.API();k.load_key('kraken.key');print(k.query_private('OpenOrders'))")"
echo "$openorders_all" | tr "'" "\"" | perl -ne '@orders =/"order":\s*"(.*?)"/g; print join("\n", @orders),"\n"'
