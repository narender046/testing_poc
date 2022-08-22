from flask import Flask
from datetime import date 

app = Flask(__name__)
today = date.today()

@app.route("/")
def index():
    return "<h1> Welcome to the work of Devops</h1>"

@app.route("/date")
def date():
    return f" <h1>Today's date is {today} enjoy your day!!<h1>"

if __name__ == "__main__":
    app.run(host='0.0.0.0',port=5000)
