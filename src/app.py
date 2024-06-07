from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "welcome to today demo!"

@app.route("/about")
def about():
    return "Here are steps to create a flask app using docker"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8000, debug=True)