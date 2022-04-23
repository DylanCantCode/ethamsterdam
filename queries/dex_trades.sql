SELECT block_time, token_a_symbol, token_b_symbol, token_a_amount, token_b_amount, project, category, usd_amount, trader_a
FROM dex.trades
Where block_time > '2022-04-20 00:00' AND block_time < '2022-04-21 00:00'
AND usd_amount > 10000
AND token_a_symbol IS NOT NULL
AND token_b_symbol IS NOT NULL
