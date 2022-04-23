import os
import openai
openai.api_key = "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"
response = openai.File.list()
print(response)
