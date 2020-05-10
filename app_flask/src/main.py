#!/usr/bin/python
# -*- coding:utf-8-*-
# Creamos aplicación con flask
#-----------------
# Importamos el modulo flask
from flask import Flask

# Ponemos nombre de nuestra aplicación creando un objeto pp
app = Flask(__name__)

# Creamos la ruta, que en nuestro caso es la raiz
@app.route('/')

# Definimos una función que retornará el Hello World
def hello():
    resultado = suma(4,3)
    return "Hello World, tu numero es %s" % (resultado)

# Definimos una funcion suma para hacer test de la app
def suma(a,b):
    return a+b

# Si encuentra, que ejecute la aplicación escuchando por cualquier interfaz
# y por el puerto por defecto de flash 5000
if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
