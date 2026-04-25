from flask import Flask, render_template
from flask_socketio import SocketIO
import csv, os

app = Flask(__name__)
socketio = SocketIO(app, cors_allowed_origins="*", async_mode="eventlet")

def read_latest():
    try:
        with open(os.path.join(os.getcwd(), 'log.csv'), 'r') as f:
            reader = list(csv.reader(f))
            if len(reader) > 1:
                return reader[-1]
    except Exception as e:
        print("ERROR:", e)
    return None


@socketio.on('connect')
def handle_connect():
    print("🔥 Client connected")

    def send_data():
        while True:
            data = read_latest()
            if data:
                print("Sending:", data)

                socketio.emit('update', {
                    'time': data[0],
                    'cpu': data[1],
                    'ram': data[2],
                    'disk': data[3]
                })
            socketio.sleep(2)

    socketio.start_background_task(send_data)


@app.route('/')
def index():
    return render_template('index.html')


if __name__ == '__main__':
    socketio.run(app, host="0.0.0.0", port=5000, debug=True)
