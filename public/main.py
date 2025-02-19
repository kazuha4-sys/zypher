# Import flask
import flask
from flask as * 

app = Flask(__name__)
@app.route('/')
def home():
    return render_templates('.html', name='Login')

if __name__ == "__main__":
    app.run(debug=True)

# Ele roda no endereço http://127.0.0.1:5000/