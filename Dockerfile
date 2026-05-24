#Paso 1: Crear una imagen base

FROM python:alpine3.23

#Paso 2: Crear el directorio de trabajo
WORKDIR /app

#Paso 3: Copiar las dependencias:
COPY requeriments.txt   /app

#Paso 4: Instalar las dependencias
RUN pip install --no-cache-dir -r requeriments.txt

#Paso 5: Copiar el codigo de la aplicacion
COPY app.py /app/


#Paso 6: Ejecutar la aplicacion
CMD ["python", "app.py"]
