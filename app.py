from flask import Flask

app = Flask(__name__)

@app.get("/")
def hello():
    return "Hola 👋 Docker Build Checks + GitHub Actions\n"

if __name__ == "__main__":
    # Para ejecución local (no contenedor)
    app.run(host="0.0.0.0", port=5000, debug=True)