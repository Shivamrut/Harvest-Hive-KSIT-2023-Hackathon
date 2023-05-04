import mysql.connector
import json

# Connect to the database
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="yourpassword",
  database="yourdatabase"
)

# Create a cursor object
mycursor = mydb.cursor()

# Fetch data from the crops table
mycursor.execute("SELECT * FROM crops")
crops_data = mycursor.fetchall()

# Fetch data from the customers table
mycursor.execute("SELECT * FROM customers")
customers_data = mycursor.fetchall()

# Fetch data from the farmers table
mycursor.execute("SELECT * FROM farmers")
farmers_data = mycursor.fetchall()

# Fetch data from the orders table
mycursor.execute("SELECT * FROM orders")
orders_data = mycursor.fetchall()

# Create a dictionary to store the data
data = {
  "crops": crops_data,
  "customers": customers_data,
  "farmers": farmers_data,
  "orders": orders_data
}

# Convert the data to JSON format
json_data = json.dumps(data)

# Print the JSON data
print(json_data)
