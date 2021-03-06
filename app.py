from flask import Flask,render_template
import math
app = Flask(__name__)
import mysql.connector
class DB:
   faculty = {}
db = DB()
mydb = mysql.connector.connect(
host="ec2-15-206-77-23.ap-south-1.compute.amazonaws.com",
user="root",
passwd="admin123",
auth_plugin='mysql_native_password'
)
mycursor = mydb.cursor()
mycursor.execute("use bit")
depts = ['CSE','ECE','CV','ME','EEE','IEM','EIM']
for i in depts:
   mycursor = mydb.cursor()
   mycursor.execute("SELECT * FROM Faculty where Dept='%s'" %(i))
   db.faculty[i] =  mycursor.fetchall()
@app.route('/')
def index():
   mydb = mysql.connector.connect(
host="ec2-15-206-77-23.ap-south-1.compute.amazonaws.com",
user="root",
passwd="admin123",
auth_plugin='mysql_native_password'
)
   mycursor = mydb.cursor()
   mycursor.execute("use bit")
   mycursor = mydb.cursor()
   mycursor.execute("SELECT * FROM Announcements order by id desc LIMIT 5")
   annos = mycursor.fetchall()
   return render_template('index.html', annons=annos,getDate=getDate)

@app.route('/about')
def about():
   return render_template('about.html')

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
      return render_template("cse.html",facs=db.faculty[dept])
   elif(dept=="ECE"):
      return render_template("ece.html",facs = db.faculty[dept])
   elif(dept=="CV"):
      return render_template("cv.html",facs=db.faculty[dept])
   elif(dept=="ME"):
      return render_template("me.html",facs = db.faculty[dept])
   elif(dept=="EEE"):
      return render_template("eee.html",facs = db.faculty[dept])
   elif(dept=="IEM"):
      return render_template("iem.html",facs = db.faculty[dept])
   elif(dept=="EIM"):
      return render_template("eim.html",facs = db.faculty[dept])

@app.route('/club/<string:club>')
def Clubs(club):
   if(club=="aikya"):
      return render_template("aikya.html")
   elif(club=="voice"):
      return render_template("voice.html")
   elif(club=="tedx"):
      return render_template("tedx.html")
   elif(club=="sports"):
      return render_template("sports.html")
   elif(club=="shuttered"):
      return render_template("shuttered.html")
   elif(club=="samskriti"):
      return render_template("samskriti.html")
   elif(club=="rotract"):
      return render_template("rotract.html")
   elif(club=="robolution"):
      return render_template("robolution.html")
   elif(club=="leo"):
      return render_template("leo.html")
   elif(club=="elevate"):
      return render_template("elevate.html")
   elif(club=="edc"):
      return render_template("edc.html")
   elif(club=="ecsa"):
      return render_template("ecsa.html")
   elif(club=="eco"):
      return render_template("eco.html")
   elif(club=="dance"):
      return render_template("dance.html")

def getDate(myDate):
    date_suffix = ["th", "st", "nd", "rd"]

    if myDate % 10 in [1, 2, 3] and myDate not in [11, 12, 13]:
        return date_suffix[myDate % 10]
    else:
        return date_suffix[0]


if __name__ == '__main__':
   app.run(debug=True)