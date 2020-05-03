#!/usr/bin/python
# -*- coding:utf-8-*-
#Con pytest hacemos un test para que se pueda ejecutar o no la app
#------
# importamos todas las funciones de main
from main import *

# hacemos un test con una suma, si es correcto lo ejecutará
def test_suma():
    assert suma(4,3) == 7
