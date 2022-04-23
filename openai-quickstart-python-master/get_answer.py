import os
import openai
import time
openai.api_key = "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"

tags = ["WBTC", "CryptoPunks"]
responses = []
for tag in tags:
    response = openai.Answer.create(
        file="file-QttiYxAADhqMs85yJY5DW8Pn",
        model="text-davinci-002",
        question="What are the most interesting trades, liquidations, and borrow transactions involving {}?".format(tag),
        temperature=0.6,
        examples_context="The block time is 2022-04-20T00:26:54+00:00. The nft project name is Cryptoadz. The platform is LooksRare. The evt type is Trade. The usd amount is 12309.723416. The seller is \\xeae59890f7787b05d0c6375651cd59920afb0576. The buyer is \\x6935df6a97b9e99ae06575c9caf7d57e73f0c233. The original amount is 3.9868. The original currency is WETH. The block number is 14618759",
        examples=[["Describe the transaction in plain english.","The address 0x6935df6a97b9e99ae06575c9caf7d57e73f0c233 purchased a Cryptoadz nft from 0xeae59890f7787b05d0c6375651cd59920afb057 at a cost of 3.9868 WETH. The transaction took place on LooksRare."],
                  ["What platform was the Cryptoadz nft sold on?", "It was sold on LooksRare."],
                  ["Who bought the Cryptoadz nft?", "0x6935df6a97b9e99ae06575c9caf7d57e73f0c233"]],
        max_tokens=500,

    )
    print(response)
    responses.append(response)

for r in responses:
    print(r.answers[0])
