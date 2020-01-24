from flask import Flask,render_template
import requests
from lxml import html
import math
app = Flask(__name__)
app.config.from_pyfile('config.cfg')
import mysql.connector
@app.route('/')
def index():
   # TODO: Change to AJAX
   #Facebook Likes Count
   page = requests.get("https://www.facebook.com/bitsince1979/")
   tree = html.fromstring(page.content)
   fcount = tree.xpath('//*[@id="PagesProfileHomeSecondaryColumnPagelet"]/div/div[2]/div/div[1]/div[2]/div/div[2]/div/text()')
   fcount = fcount[0][0:3]
   #Twitter Follower Count
   url = "https://api.twitter.com/1.1/users/show.json?screen_name=bitsince1979"
   payload = {}
   OAUTH_CONSUMER_KEY = app.config['OAUTH_CONSUMER_KEY']
   OAUTH_TOKEN = app.config['OAUTH_TOKEN']
   OAUTH_TIMESTAMP = app.config['OAUTH_TIMESTAMP']
   OAUTH_NONCE = app.config['OAUTH_NONCE']
   OAUTH_SIGNATURE = app.config['OAUTH_SIGNATURE']
   oauth = 'OAuth oauth_consumer_key="%s",oauth_token="%s",oauth_signature_method="HMAC-SHA1",oauth_timestamp="%s",oauth_nonce="%s",oauth_version="1.0",oauth_signature="%s"' %(OAUTH_CONSUMER_KEY,OAUTH_TOKEN,OAUTH_TIMESTAMP,OAUTH_NONCE,OAUTH_SIGNATURE)
   headers = {
   'Authorization': oauth
   }

   tcount = requests.request("GET", url, headers=headers, data = payload)
   mydb = mysql.connector.connect(
  host="ec2-15-206-77-23.ap-south-1.compute.amazonaws.com",
  user="root",
  passwd="admin123",
auth_plugin='mysql_native_password'
)
   mycursor = mydb.cursor()
   mycursor.execute("use bit")
   tcount = tcount.json()['followers_count']
   mycursor = mydb.cursor()
   mycursor.execute("SELECT * FROM Announcements order by id desc LIMIT 5")
   myresult = mycursor.fetchall()
   return render_template('index.html', fcount=fcount, tcount=tcount, annons=myresult,getDate=getDate)

@app.route('/about')
def about():
    #Facebook Likes Count
   page = requests.get("https://www.facebook.com/bitsince1979/")
   tree = html.fromstring(page.content)
   fcount = tree.xpath('//*[@id="PagesProfileHomeSecondaryColumnPagelet"]/div/div[2]/div/div[1]/div[2]/div/div[2]/div/text()')
   fcount = fcount[0][0:3]
   #Twitter Follower Count
   url = "https://api.twitter.com/1.1/users/show.json?screen_name=bitsince1979"
   payload = {}
   OAUTH_CONSUMER_KEY = app.config['OAUTH_CONSUMER_KEY']
   OAUTH_TOKEN = app.config['OAUTH_TOKEN']
   OAUTH_TIMESTAMP = app.config['OAUTH_TIMESTAMP']
   OAUTH_NONCE = app.config['OAUTH_NONCE']
   OAUTH_SIGNATURE = app.config['OAUTH_SIGNATURE']
   oauth = 'OAuth oauth_consumer_key="%s",oauth_token="%s",oauth_signature_method="HMAC-SHA1",oauth_timestamp="%s",oauth_nonce="%s",oauth_version="1.0",oauth_signature="%s"' %(OAUTH_CONSUMER_KEY,OAUTH_TOKEN,OAUTH_TIMESTAMP,OAUTH_NONCE,OAUTH_SIGNATURE)
   headers = {
   'Authorization': oauth
   }

   tcount = requests.request("GET", url, headers=headers, data = payload)
   tcount = tcount.json()['followers_count']
   return render_template('about.html',fcount=fcount, tcount=tcount)

@app.route('/placement')
def placement():
   return render_template('placement.html')

@app.route('/archive/<int:page>')
def archive(page):
   mydb = mysql.connector.connect(
  host="ec2-15-206-77-23.ap-south-1.compute.amazonaws.com",
  user="root",
  passwd="admin123",
auth_plugin='mysql_native_password'
)
   mycursor = mydb.cursor()
   mycursor.execute("use bit")
   mycursor = mydb.cursor()
   mycursor.execute("select count(*) from Announcements")
   myresult = mycursor.fetchall()
   count = myresult[0][0]
   pages = math.ceil(count/5)
   mycursor = mydb.cursor()
   mycursor.execute("SELECT * FROM Announcements order by id desc LIMIT "+str((page-1)*5)+",5")
   myresult = mycursor.fetchall()
   return render_template('archive.html',pages=pages,annons=myresult,page=page,getDate=getDate)

@app.route('/contact')
def contact():
   return render_template('contact.html')

@app.route('/announcement/<id>')
def announcement(id):
   mydb = mysql.connector.connect(
  host="ec2-15-206-77-23.ap-south-1.compute.amazonaws.com",
  user="root",
  passwd="admin123",
auth_plugin='mysql_native_password'
)
   mycursor = mydb.cursor()
   mycursor.execute("use bit")
   mycursor = mydb.cursor()
   mycursor.execute("SELECT * FROM Announcements where id="+id)
   myresult = mycursor.fetchall()[0]
   mycursor1 = mydb.cursor()
   mycursor1.execute("SELECT * FROM documents where id="+id)
   myresult1 = mycursor1.fetchall()
   return render_template('single-post.html',myresult=myresult, docs=myresult1)

@app.route('/videospost')
def videopost():
   return render_template('video-post.html')

@app.route('/department/<string:dept>')
def departmemt(dept):
   if(dept=="CSE"):
      return render_template("cse.html")

def getDate(myDate):
    date_suffix = ["th", "st", "nd", "rd"]

    if myDate % 10 in [1, 2, 3] and myDate not in [11, 12, 13]:
        return date_suffix[myDate % 10]
    else:
        return date_suffix[0]


if __name__ == '__main__':
   app.run(debug=True)
   