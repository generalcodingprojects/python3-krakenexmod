exchangeraterequestxbt="$(python3 -c "import api;k=api.API();print(k.query_public('Ticker',{'pair': 'XXBTZUSD'}))")"
xbt_exchangerate_current="$(echo "$response" | tr "'" "\"" | tr -d " " | perl -ne '/"XXBTZEUR".*?"c":\["(.*?)"/ && print $1')"
echo "$xbt_exchangerate_current"
