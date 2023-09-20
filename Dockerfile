# Usa una imagen base de Python
FROM python:3.10

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo requirements.txt al directorio de trabajo
COPY requirements.txt requirements.txt

# Instala las dependencias del proyecto
RUN pip install -r requirements.txt

# Copia todo el contenido del directorio actual al directorio de trabajo
COPY . .

# Variables de entorno para la base de datos remota
ENV DB_NAME=blog-post
ENV DB_USER=fl0user
ENV DB_PASSWORD=P1y3CSLocTtB
ENV DB_HOST=ep-jolly-mouse-59601306.us-east-2.aws.neon.tech
ENV DB_PORT=5432

# Expone el puerto 8000 para acceder al servidor Django
EXPOSE 8000

# Comando para ejecutar el servidor Django
CMD ["python", "blog_project/manage.py", "runserver", "0.0.0.0:8000"]

