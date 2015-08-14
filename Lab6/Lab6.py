#LAB6 Python starter code 
#imports go here
import MySQLdb
#Edited by Rock 
#import _mysql

#code goes here

buffer = "true"


def oneQuery():
    db = MySQLdb.connect(host="localhost",user="root",passwd="",db="Beer")
    db.query("""SELECT * FROM Beer;""")
    r = db.store_result()
    nR = r.num_rows()
    while(nR > 0):
        print(r.fetch_row())
        nR = nR - 1
    db.close()

def twoQuery():
    db = MySQLdb.connect(host="localhost",user="root",passwd="",db="Beer")
    db.query("""SELECT * FROM Future;""")
    r = db.store_result()
    nR = r.num_rows()
    while(nR > 0):
        print(r.fetch_row())
        nR = nR - 1
    db.close()

def threeQuery():
    db = MySQLdb.connect(host="localhost",user="root",passwd="",db="Beer")
    #db.query("""SELECT vineyardID FROM vineyard WHERE vineyardID not in (select vineyardID from funding)""")
    db.query("""SELECT breweryID FROM Brewery WHERE breweryID not in (select BreweryID from Funding)""")
    r = db.store_result()
    nR = r.num_rows()
    while(nR > 0):
        print(r.fetch_row())
        nR = nR - 1
    if nR == 0:
        print("""all Brewery(s) have at least 1 Future contract""")
    db.close()

while buffer:
    print("""
    0.Exit
    1.See Beer
    2.See Future
    3.See if a Brewery has no Future contracts
    """)
    buffer=input("what would you like to do? ")
    if buffer == 1:
        oneQuery()
    if buffer == 2:
        twoQuery()
    if buffer == 3:
        threeQuery()
