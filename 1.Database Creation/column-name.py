import pandas as pd
import os

# Defines the directory where the CSV files are located
directory = 'Data'

l1=['Fecom Inc Customer List.csv', 'Fecom Inc Order Payments.csv', 'Fecom_Inc_Order_Reviews_No_Emojis.csv']
l2=['Fecom Inc Geolocations.csv', 'Fecom Inc Order Items.csv', 'Fecom Inc Orders.csv', 'Fecom Inc Products.csv', 'Fecom Inc Sellers List.csv']

for file in l1:
    file_path = os.path.join(directory, file)
    print(f"Full file path: {file_path}")
    df = pd.read_csv(file_path, sep=',', encoding='cp1252')
    print(f"Columns in {file}: {df.columns}")
    print(f"Data types of columns in {file}:")
    print(df.dtypes)
for file in l2:
    file_path = os.path.join(directory, file)
    print(f"Full file path: {file_path}")
    df = pd.read_csv(file_path, sep=';', encoding='cp1252')
    print(f"Columns in {file}: {df.columns}")
    print(f"Data types of columns in {file}:")
    print(df.dtypes)



