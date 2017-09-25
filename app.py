from flask import Flask
import socket


app = Flask(__name__)

@app.route('/')
def hello():
    return "You are running server using docker container, WELCOME TO SDP"


if __name__ == "__main__":
    app.run(host='localhost', port=8089)
