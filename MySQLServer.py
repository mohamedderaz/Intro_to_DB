import mysql.connector

mydb = mysql.connector.connect(host="localhost",
    user="root",
    password="66426331340Aa@msd")
mycursor = mydb.cursor()
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
print("Database 'alx_book_store' created successfully!")
mydb.commit()
mydb.close()
except mysql.connector.Error as err:
print("error")