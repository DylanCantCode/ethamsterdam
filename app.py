import os

import openai
from flask import Flask, redirect, render_template, request, url_for

app = Flask(__name__)
openai.api_key = os.getenv("OPENAI_API_KEY")


@app.route("/", methods=("GET", "POST"))
def index():
    if request.method == "POST":
        tags = request.form['tags']
        tags = tags.split(',')
        responses = []
        question = open(r"C:\Users\dylan\OneDrive\Documents\Coding\ethamsterdam\openai-quickstart-python-master\gpt3\question.txt").read()
        with open(r"C:\Users\dylan\OneDrive\Documents\Coding\ethamsterdam\openai-quickstart-python-master\gpt3\examples.txt") as f:
            examples_context = f.readline()
            examples = [x.split('*') for x in f.readlines()]

        for tag in tags:
            response = openai.Answer.create(
                file="file-m5aeuE3Y6Mehs0Myod4yhibP",
                model="text-davinci-002",
                question=question.format(tag),
                temperature=0.7,
                examples_context=examples_context,
                examples=examples,
                max_tokens=500,
            )
            responses.append(response)

        out = ""
        print(responses)
        for r in responses:
            out += r.answers[0]
            out += '\n\n'
        print(out)
        #out = out.replace('\n', '<br/>')
        print(out)

        return redirect(url_for("index", result=out))#.answers[0]


    result = request.args.get("result")
    return render_template("index.html", result=result)
