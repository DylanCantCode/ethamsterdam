import os
import openai
openai.api_key = "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"
response = openai.File.create(
  file=open(r"C:\Users\dylan\OneDrive\Documents\Coding\ethamsterdam\data\ultimate.jsonl"),
  purpose='answers'
)
print(response)
