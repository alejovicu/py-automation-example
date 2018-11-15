#!/usr/bin/python
import json
import psycopg2
from config import config
 
def getAllUsers():
    """ Connect to the PostgreSQL database server """
    conn = None
    users = []
    try:
        params = config()
        conn = psycopg2.connect(**params)

        cur = conn.cursor()

        cur.execute('SELECT * FROM public.user')
        columns = ('user_id', 'name')
 
        for row in cur.fetchall():
            users.append(dict(zip(columns, row)))
        
        cur.close()

    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()
            print('Database connection closed.')
    
    return json.dumps(users, indent=2)
 
 
if __name__ == '__main__':
    connect()
