import os

import openai
from flask import Flask, redirect, render_template, request, url_for

app = Flask(__name__)
openai.api_key = os.getenv("OPENAI_API_KEY")

def cache_request(q, r):
    with open(r"cache\index.txt", "r+") as f:
        index = int(f.read())
    with open(r"cache\index.txt", "w") as f:
        f.write(str(index + 1))

    with open(r"cache\{}".format(index), "w") as f:
        f.write(str((q, r)))


@app.route("/", methods=("GET", "POST"))
def index():
    if request.method == "POST":
        tags = request.form['tags']
        tags = tags.split(',')
        responses = []
        question = open(r"/home/DylanLea/mysite/mysite/gpt3/question.txt").read()
        with open(r"/home/DylanLea/mysite/mysite/gpt3/examples.txt") as f:
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
            cache_request([question.format(tag), examples_context, examples], response)
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
