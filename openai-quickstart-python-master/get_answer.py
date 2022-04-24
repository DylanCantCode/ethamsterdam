import os
import openai
import time
openai.api_key = "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"

prompt = open(r"C:\Users\dylan\OneDrive\Documents\Coding\ethamsterdam\openai-quickstart-python-master\gpt3\prompt.txt").read()
text1="""The most important on-chain transactions involving Bored Ape Yacht Club include:
- The sale of a Bored Ape Yacht Club nft from 0xb3a66b7ce5bd65b0ea5c858b9824cba285dc5a8b to 0xabdfa75a36c274bddacdb412bee86044b5a658e9 at a cost of 125.0 WETH.
- The sale of a Bored Ape Yacht Club nft from 0x28ef1cbfceba826789be19833ed597c9a9bcc791 to 0x2c83484b7998b0374a033aa0a7af42de2e325c93 at a cost of 120.0 WETH.
- The sale of a Bored Ape Yacht Club nft from 0x34b14e83d7da6c6a30c46bf89ff93b066e139154 to 0xd7b2879c8922cd704e41e8cc1f18f6994d6b7c36 at a cost of 115.0 WETH.
- The sale of a Bored Ape Yacht Club nft from 0xbf4c53721e3677a6c3d10e1ae08918d0477297ad to 0x5ecbd537c5fa12545991ab4e4f4c545fcd996ee2 at a cost of 130.0 WETH.
- The sale of a Bored Ape Yacht Club nft from 0xc9132a3f53c1c80c87d5d645d8dafae9dd3b8981 to 0x3496470968dcc506578c27499a8506a44254e392 at a cost of 150.0 WETH.
- The sale of a Bored Ape Yacht Club nft from 0x1b90bbe983a438e3f7466fbc44bdb453f10c968e to 0xa9fe952edd2958ab7dea126c6d8b4413afd3e771 at a cost of 127.0 WETH.
- The sale of"""
text2="""The most important on-chain transactions involving APE are:
- The purchase of APE on Uniswap by 0xd05cf750bd403c97d4d184865ab6e41817ae2c2d at a cost of 9.83486868380485 WETH.
- The purchase of APE on Uniswap by 0x74de5d4fcbf63e00296fd95d33236b9794016631 at a cost of 3.7171875 WETH.
- The purchase of APE on Uniswap by 0x78a32e628c81432670ae87a6555d1d50c8c8d3fe at a cost of 12335.013083 USDC.
- The purchase of APE on Uniswap by 0xcdcbd44526006122306293e4e2ae7f2d7352363e at a cost of 3.3 WETH.
- The purchase of APE on Uniswap by 0xfba8a2fa05e0ee39b6e3c584a0f7ce397cc92af0 at a cost of 30.0 WETH.
- The purchase of APE on Uniswap by 0x56178a0d5f301baf6cf3e1cd53d9863437345bf9 at a cost of 16078.554663 USDC.
- The purchase of APE on Uniswap by 0xcbf3c9b38003fa550a7bff5206366c1f62480ba7 at a cost of 15425.584276 USDC.
- The purchase of APE on Uniswap by 0x74de5d4fcbf63e00296fd95d33236b9794016631 at a cost of 23790.0 USDC.
- The purchase of APE on Uniswap by 0xf81a9b3e1faa60d716956bc0c3c77db5b85c97a4 at a cost of 16.7586339386495 WETH.
- The purchase of APE on Uniswap by 0x74de5d4fc
"""
print(prompt.format(text1, text2))
res = openai.Completion.create(
    model="text-davinci-002",
    temperature=0.7,
    prompt = prompt.format(text1, text2),
    max_tokens=500,
)
print(res)
