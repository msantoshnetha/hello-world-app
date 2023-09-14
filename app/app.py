from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    """This function returns the string
    "Hello, World!" to the user's browser."""
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
