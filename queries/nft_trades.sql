SELECT block_time, nft_project_name, platform, evt_type, usd_amount, seller, buyer, original_amount, original_currency, block_number, nft_token_id, tx_hash
FROM nft.trades
Where block_time > '2022-04-20 00:00' AND block_time < '2022-04-21 00:00'
AND trade_type = 'Single Item Trade'
AND nft_project_name IS NOT NULL
