import numpy as np
import pandas as pd
import pymysql

# Connect to the database
conn = pymysql.connect(
    host="localhost",
    user="root",
    password="",
    db="harvest1"
)


crop_ids = np.arange(105, 205)
crop_names = np.random.choice(["Wheat", "Rice", "Maize", "Barley", "Soybean"], size=100)
crop_descriptions = ["Lorem ipsum" for _ in range(100)]
crop_prices = np.random.uniform(50, 500, size=100)
farmer_ids = np.random.choice(range(1,100), size=100)

# print(  len(crop_ids))
# print(  len(crop_names))
# print(  len(crop_descriptions))
# print(  len(crop_prices))
# print(  len(farmer_ids))


crops_df = pd.DataFrame({
    "crop_id": crop_ids,
    "crop_name": crop_names,
    "crop_description": crop_descriptions,
    "crop_price": crop_prices,
    "farmer_id": farmer_ids
})


cursor = conn.cursor()
for _, row in crops_df.iterrows():
    sql = "INSERT INTO crops (crop_id, crop_name, crop_description, crop_price, farmer_id) VALUES (%s, %s, %s, %s, %s)"
    values = (int(row["crop_id"]), row["crop_name"], row["crop_description"], float(row["crop_price"]), int(row["farmer_id"]))
    cursor.execute(sql, values)
conn.commit()

conn.close()
