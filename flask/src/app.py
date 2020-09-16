from flask import Flask, jsonify, request, render_template
import pprint

app = Flask(__name__)

@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def index(path):
    return render_template('h.html', title="Python Flask", body=pprint.pformat(request.__dict__))


if __name__ == '__main__':
    app.run()
