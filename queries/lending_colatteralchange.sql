SELECT project, block_time, borrower, asset_symbol, token_amount, usd_value
FROM lending.collateral_change
Where block_time > '2022-04-20 00:00' AND block_time < '2022-04-21 00:00'
