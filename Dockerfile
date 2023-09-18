# Usa la imagen oficial de Python como base
FROM python:3.10

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requisitos (requirements.txt) al contenedor
COPY requirements.txt .

# Instala las dependencias del proyecto
RUN pip install -r requirements.txt

# Copia el código fuente de tu proyecto al contenedor
COPY . .

# Expone el puerto en el que se ejecutará la aplicación Django
EXPOSE 8000

# Define la variable de entorno para la configuración de Django
ENV DJANGO_SETTINGS_MODULE=blog_project.settings

# Ejecuta el servidor de desarrollo de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
