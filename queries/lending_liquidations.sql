SELECT project, block_time, liquidated_borrower, tx_from, debt_to_cover_asset_symbol, debt_to_cover_token_amount, debt_to_cover_usd_value
FROM lending.liquidation
Where block_time > '2022-04-20 00:00' AND block_time < '2022-04-21 00:00'
