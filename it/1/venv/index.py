from flask import Flask
from flask import render_template

app = Flask(__name__)


@app.route('/')
def index():
    return render_template('index.html',)


@app.route('/get')
def get():
    return """[
                     {title: 'title1', value: '12234'},
                     {title: 'title2', value: 'some text'},
                     {title: 'title3', value: '12qwerty234'},
                     {title: 'title4', value: '123.5'}
                    ]"""


if __name__ == '__main__':
    app.run()

