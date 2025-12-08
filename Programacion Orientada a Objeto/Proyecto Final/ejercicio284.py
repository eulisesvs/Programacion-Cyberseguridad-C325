import mysql.connector

conexion1=mysql.connector.connect(host="localhost", user="root", passwd="")
cursor1=conexion1.cursor()

sql="drop database if exists bd2"
cursor1.execute(sql)

sql="create database bd2"
cursor1.execute(sql)

conexion1.close()