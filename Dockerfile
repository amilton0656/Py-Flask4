# 1. Usar uma imagem base oficial do Python
# A tag 'slim' é uma versão mais leve, ótima para produção
FROM python:3.9-slim

# 2. Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# 3. Copiar o arquivo de dependências e instalar
# Copiar primeiro aproveita o cache do Docker. Se não mudarmos as dependências,
# este passo não será executado novamente em builds futuros.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copiar o resto do código da nossa aplicação para o diretório de trabalho
COPY . .

# 5. Expor a porta que o nosso app Flask está usando dentro do contêiner (5000)
EXPOSE 5000

# 6. Definir o comando para executar quando o contêiner iniciar
CMD ["python", "app.py"]