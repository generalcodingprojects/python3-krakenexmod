exchangeraterequestxbt="$(python3 -c "import api;k=api.API();print(k.query_public('Ticker',{'pair': 'XXBTZUSD'}))")"
xbt_exchangerate_current="$(echo "$response" | tr "'" "\"" | tr -d " " | perl -ne '/"XXBTZEUR".*?"c":\["(.*?)"/ && print $1')"
echo "$xbt_exchangerate_current"

#To convert a certain amount of usd to xbt and round off the number to one decimal, use this:
#usdinputamount="insert_xbtamounttoconverttoxbt_here"
#xbtinusd_onedecimal="$(echo "$xbt_exchangerate_current * $usdinputamount" | bc | xargs printf "%.1f")"
#echo "$xbtinusd_onedecimal"
