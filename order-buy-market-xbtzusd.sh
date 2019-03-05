$xbt_amountyouwanttobuy='insert_amount_here'
python3 -c "import api;k=api.API();k.load_key('kraken.key');print(k.query_private('AddOrder', {'pair': 'XXBTZUSD', 'type': 'buy', 'ordertype': 'market', 'volume': '$xbt_amountyouwanttobuy'}))"
