from flask import Flask, render_template

# Cria uma instância do aplicativo Flask
app = Flask(__name__)

# Define a rota principal ('/') da aplicação
@app.route('/')
def hello_world():
    return render_template('index.html')

# Executa o aplicativo
if __name__ == '__main__':
    # O host '0.0.0.0' é essencial para que o container possa ser acessado de fora
    app.run(host='0.0.0.0', port=5000)