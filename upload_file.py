import os
import openai
openai.api_key = "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"
response = openai.File.create(
  file=open(r"C:\Users\dylan\OneDrive\Documents\Coding\ethamsterdam\data\ultimate.jsonl"),
  purpose='answers'
)
print(response)
