# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, Dockerized Flask!"

if __name__ == "__main__":
    # Run the app, listening on all interfaces (0.0.0.0) so it's accessible externally
    app.run(host='0.0.0.0', port=5050)
 