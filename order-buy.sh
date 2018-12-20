python3 -c "import api;k=api.API();k.load_key('kraken.key');kraken.query_private('AddOrder', {'pair': 'XXBTZUSD', 'type': 'buy', 'ordertype': 'market', 'volume': 'amountyouwanttobuy'})"
