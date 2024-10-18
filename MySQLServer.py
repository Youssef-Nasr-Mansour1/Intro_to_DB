import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Establish a connection to the MySQL server
        connection = mysql.connector.connect(
            host='localhost',  # Replace with your host if different
            user='root',       # Replace with your MySQL username
            password='password'  # Replace with your MySQL password
        )

        if connection.is_connected():
            # Create a cursor object
            cursor = connection.cursor()
            
            # Create the database if it does not exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            
            # Print success message
            print("Database 'alx_book_store' created successfully!")
        
    except mysql.connector.Error as e:
        # Print error message if any exception occurs
        print(f"Error: {e}")
    
    finally:
        # Close the cursor and connection
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")

# Call the function to create the database
if __name__ == "__main__":
    create_database()
