from flask import Flask, render_template, jsonify


app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template("index.html", title="Hello World")

@app.route('/check', methods=['GET'])
def health():

    return jsonify("OK ss dd"), 200, {'Content-Type': 'application/json'}
