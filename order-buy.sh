python3 -c "import api;k=api.API();k.load_key('kraken.key');kraken.query_private('AddOrder', {'pair': 'XRPEUR', 'type': 'buy', 'ordertype': 'market', 'volume': '$amountyouwanttobuy'})"
