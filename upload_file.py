import os
import openai
openai.api_key = "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"
response = openai.File.create(
  file=open(r"C:\Users\dylan\OneDrive\Documents\Coding\ethamsterdam\data\ultimate.jsonl"),
  purpose='answers'
)
print(response)
