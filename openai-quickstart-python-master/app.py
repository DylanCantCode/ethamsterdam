import os

import openai
from flask import Flask, redirect, render_template, request, url_for

app = Flask(__name__)
openai.api_key = os.getenv("OPENAI_API_KEY")

#gpt3 queries
def get_Answer_for_tag(tag, examples_context, examples, question):
    res = openai.Answer.create(
        file="file-QttiYxAADhqMs85yJY5DW8Pn",
        model="text-davinci-002",
        question=question.format(tag),
        temperature=0.7,
        examples_context=examples_context,
        examples=examples,
        max_tokens=500,
    ).answers[0]
    print(res)
    return res

def combine_texts(text1, text2, prompt):
    res = openai.Completion.create(
        model="text-davinci-002",
        temperature=0.7,
        prompt = prompt.format(text1, text2),
        max_tokens=500,
    ).choices[0].text
    print(res)
    return res

@app.route("/", methods=("GET", "POST"))
def index():
    if request.method == "POST":
        tags = request.form['tags']
        tags = tags.split(",")
        responses = []
        prompt = open(r"C:\Users\dylan\OneDrive\Documents\Coding\ethamsterdam\openai-quickstart-python-master\gpt3\prompt.txt").read()
        question = open(r"C:\Users\dylan\OneDrive\Documents\Coding\ethamsterdam\openai-quickstart-python-master\gpt3\question.txt").read()
        with open(r"C:\Users\dylan\OneDrive\Documents\Coding\ethamsterdam\openai-quickstart-python-master\gpt3\examples.txt") as f:
            examples_context = f.readline()
            examples = [x.split(',') for x in f.readlines()]


        print(question, examples, examples_context)
        for tag in tags:
            response = get_Answer_for_tag(tag, examples_context, examples, question)
            responses.append(response)


        out = ""
        print(responses)
        while(len(responses) > 1):
            for i in range(0,len(responses)//2):
                responses = responses[0:i] + [combine_texts(responses[i], responses[i+1], prompt)] + responses [i+2:]

        return redirect(url_for("index", result=responses[0]))#.answers[0]


    result = request.args.get("result")
    return render_template("index.html", result=result)
