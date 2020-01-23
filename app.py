from flask import Flask,render_template
app = Flask(__name__)

@app.route('/')
def index():
   return render_template('index.html')

@app.route('/about',methods=['GET','POST'])
def about():
   return render_template('about.html')

@app.route('/archive')
def archive():
   return render_template('archive.html')

@app.route('/contact')
def contact():
   return render_template('contact.html')

@app.route('/singlepost')
def singlepost():
   return render_template('single-post.html')

@app.route('/videospost')
def videopost():
   return render_template('video-post.html')

if __name__ == '__main__':
   app.run(debug=True)