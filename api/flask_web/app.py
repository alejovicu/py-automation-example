from flask import (
    Flask,
    render_template
)
from connect_db import getAllUsers

# Create the application instance
app = Flask(__name__, template_folder="templates")

@app.route('/user/')
def user():
    return getAllUsers()

# If we're running in stand alone mode, run the application
if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')
