from flask import Flask, render_template,request,make_response
import mysql.connector
from mysql.connector import Error
import sys
import torch
import torch.nn as nn
from torch.nn.neuralnetwork import feedforward
import os, random
import pandas as pd
import numpy as np
import json  #json request
from werkzeug.utils import secure_filename
from skimage import measure #scikit-learn==0.23.0
#from skimage.measure import structural_similarity as ssim #old
import matplotlib.pyplot as plt
import numpy as np
#from processing import *
from PIL import Image
import cv2
import glob


app = Flask(__name__)
app.debug = True

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/index')
def index1():
    return render_template('index.html')

@app.route('/twoform')
def twoform():
    return render_template('twoform.html')

@app.route('/preindex')
def preindex():
    return render_template('preindex.html')


@app.route('/login')
def login():
    return render_template('login.html')


@app.route('/register')
def register():
    return render_template('register.html')

@app.route('/forgot')
def forgot():
    return render_template('forgot.html')

@app.route('/mainpage')
def mainpage():
    return render_template('mainpage.html')





'''Register Code'''
@app.route('/regdata', methods =  ['GET','POST'])
def regdata():
    connection = mysql.connector.connect(host='localhost',database='flaskliverdb',user='root',password='')
    uname = request.args['uname']
    email = request.args['email']
    phn = request.args['phone']
    pssword = request.args['pswd']
    addr = request.args['addr']
    dob = request.args['dob']
    print(dob)
        
    cursor = connection.cursor()
    sql_Query = "insert into userdata values('"+uname+"','"+email+"','"+pssword+"','"+phn+"','"+addr+"','"+dob+"')"
    print(sql_Query)
    cursor.execute(sql_Query)
    connection.commit() 
    connection.close()
    cursor.close()
    msg="User Account Created Successfully"    
    resp = make_response(json.dumps(msg))
    return resp


def mse(imageA, imageB):    
    # the 'Mean Squared Error' between the two images is the
    # sum of the squared difference between the two images;
    # NOTE: the two images must have the same dimension
    err = np.sum((imageA.astype("float") - imageB.astype("float")) ** 2)
    err /= float(imageA.shape[0] * imageA.shape[1])
    
    # return the MSE, the lower the error, the more "similar"
    # the two images are
    return err

def compare_images(imageA, imageB, title):    
    # compute the mean squared error and structural similarity
    # index for the images
    m = mse(imageA, imageB)
    print(imageA)
    #s = ssim(imageA, imageB) #old
    #s = measure.compare_ssim(imageA, imageB, multichannel=True)
    return s



"""LOGIN CODE """

@app.route('/logdata', methods =  ['GET','POST'])
def logdata():
    connection=mysql.connector.connect(host='localhost',database='flaskliverdb',user='root',password='')
    lgemail=request.args['email']
    lgpssword=request.args['password']
    print(lgemail, flush=True)
    print(lgpssword, flush=True)
    cursor = connection.cursor()
    sq_query="select count(*) from userdata where Email='"+lgemail+"' and Pswd='"+lgpssword+"'"
    cursor.execute(sq_query)
    data = cursor.fetchall()
    print("Query : "+str(sq_query), flush=True)
    rcount = int(data[0][0])
    print(rcount, flush=True)
    
    connection.commit() 
    connection.close()
    cursor.close()
    
    if rcount>0:
        msg="Success"
        resp = make_response(json.dumps(msg))
        return resp
    else:
        msg="Failure"
        resp = make_response(json.dumps(msg))
        return resp

#DBN Start
    
class DBNF():
    def _init_(self):
        #super(DBNF, self)._init_()
        self.visible_units = 30
        self.hidden_units = 10
        self.k = 3
        
    def _init_(self, visible_units, hidden_units, k=1):
        super(DBNF, self)._init_()
        self.visible_units = visible_units
        self.hidden_units = hidden_units
        self.k = k  
        
        self.W = nn.Parameter(torch.randn(hidden_units, visible_units) * 0.1)
        self.v_bias = nn.Parameter(torch.zeros(visible_units))
        self.h_bias = nn.Parameter(torch.zeros(hidden_units))
        
    def sample_from_p(self, p):
        return torch.bernoulli(p)

    def v_to_h(self, v):
        p_h = torch.sigmoid(torch.matmul(v, self.W.t()) + self.h_bias)
        sample_h = self.sample_from_p(p_h)
        return p_h, sample_h

    def h_to_v(self, h):
        p_v = torch.sigmoid(torch.matmul(h, self.W) + self.v_bias)
        sample_v = self.sample_from_p(p_v)
        return p_v, sample_v

    def forward(self, v):
        h = self.sample_from_p(torch.sigmoid(torch.matmul(v, self.W.t()) + self.h_bias))
        for _ in range(self.k):
            v = self.sample_from_p(torch.sigmoid(torch.matmul(h, self.W) + self.v_bias))
            h = self.sample_from_p(torch.sigmoid(torch.matmul(v, self.W.t()) + self.h_bias))
        return v
    
    def free_energy(self, v):
        vbias_term = v.mv(self.v_bias)
        wx_b = torch.matmul(v, self.W.t()) + self.h_bias
        hidden_term = wx_b.exp().add(1).log().sum(1)
        return (-hidden_term - vbias_term).mean()

# Define the DBN class
class DBN():
    def _init_(self, DBNF_layers, n_classes):
        super(DBN, self)._init_()
        self.DBNF_layers = nn.ModuleList(DBNF_layers)
        self.classifier = nn.Linear(DBNF_layers[-1].hidden_units, n_classes)
        
    def feedforward(self, x,img,model):
        for DBNF in self.DBNF_layers:
            _, x = DBNF.v_to_h(x)
        x = self.classifier(x)
        return x

#DBN END

@app.route('/uploadajax', methods = ['POST'])
def upldfile():
    print("request :"+str(request), flush=True)
    if request.method == 'POST':
    
        prod_mas = request.files['first_image']
        print(prod_mas)
        filename = secure_filename(prod_mas.filename)
        prod_mas.save(os.path.join("D:\\Upload\\", filename))

        #csv reader
        fn = os.path.join("D:\\Upload\\", filename)

        count = 0
        diseaselist=os.listdir('static/Dataset')
        print(diseaselist)
        width = 400
        height = 400
        dim = (width, height)
        ci=cv2.imread("D:\\Upload\\"+ filename)
        gray = cv2.cvtColor(ci, cv2.COLOR_BGR2GRAY)
        cv2.imwrite("static/Grayscale/"+filename,gray)
        
        gray = cv2.cvtColor(ci, cv2.COLOR_BGR2GRAY)
        cv2.imwrite("static/Grayscale/"+filename,gray)
        #cv2.imshow("org",gray)
        #cv2.waitKey()

        thresh = cv2.cvtColor(ci, cv2.COLOR_BGR2HSV)
        cv2.imwrite("static/Threshold/"+filename,thresh)
        val=os.stat(fn).st_size
        #cv2.imshow("org",thresh)
        #cv2.waitKey()

        lower_green = np.array([34, 177, 76])
        upper_green = np.array([255, 255, 255])
        hsv_img = cv2.cvtColor(ci, cv2.COLOR_BGR2HSV)
        binary = cv2.inRange(hsv_img, lower_green, upper_green)
        
        cv2.imwrite("static/Binary/"+filename,gray)
        #cv2.imshow("org",binary)
        #cv2.waitKey()\
        #Step one - grayscale the image
        grayscale_img = cvt_image_colorspace(ci)
        #show_image('Grayscaled image', grayscale_img)

        #Step two - filter out image
        median_filtered = median_filtering(grayscale_img,5)
        #show_image('Median filtered', median_filtered)


        #testing threshold function
        bin_image = apply_threshold(median_filtered,  **{"threshold" : 160,
                                                        "pixel_value" : 255,
                                                        "threshold_method" : cv2.THRESH_BINARY})
        otsu_image = apply_threshold(median_filtered, **{"threshold" : 0,
                                                        "pixel_value" : 255,
                                                        "threshold_method" : cv2.THRESH_BINARY + cv2.THRESH_OTSU})


        #Step 3a - apply Sobel filter
        img_sobelx = sobel_filter(median_filtered, 1, 0)
        img_sobely = sobel_filter(median_filtered, 0, 1)

        # Adding mask to the image
        img_sobel = img_sobelx + img_sobely+grayscale_img
        #show_image('Sobel filter applied', img_sobel)

        #Step 4 - apply threshold
        # Set threshold and maxValue
        threshold = 160
        maxValue = 255
        dbn=DBNF()

        # Threshold the pixel values
        thresh = apply_threshold(img_sobel,  **{"threshold" : 160,
                                                        "pixel_value" : 255,
                                                        "threshold_method" : cv2.THRESH_BINARY})
        cv2.imwrite("static/Binary/"+filename,thresh)
        #show_image("Thresholded", thresh)


        #Step 3b - apply erosion + dilation
        #apply erosion and dilation to show only the part of the image having more intensity - tumor region
        #that we want to extract
        kernel=cv2.getStructuringElement(cv2.MORPH_RECT,(9,9))
        erosion = cv2.morphologyEx(median_filtered, cv2.MORPH_ERODE, kernel)
        #show_image('Eroded image', erosion)



        dilation = cv2.morphologyEx(erosion, cv2.MORPH_DILATE, kernel)
        #show_image('Dilatated image', dilation)

        #Step 4 - apply thresholding
        threshold = 160
        maxValue = 255

        # apply thresholding
        new_thresholding = apply_threshold(dilation,  **{"threshold" : 160,
                                                        "pixel_value" : 255,
                                                        "threshold_method" : cv2.THRESH_BINARY})
        #show_image('Threshold image after erosion + dilation', new_thresholding)

        
        cv2.imwrite("./static/Mask/"+filename,new_thresholding)
        op,stg,acc=feedforward(val,ci,"model.h5")
        print(op)
        if op=='Normal':
            stg='Not Applicable'
        
        flagger=1
        diseasename=""
        oresized = cv2.resize(ci, dim, interpolation = cv2.INTER_AREA)
        for i in range(len(diseaselist)):
            if flagger==1:
                files = glob.glob('static/Dataset/'+diseaselist[i]+'/*')
                #print(len(files))
                for file in files:
                    # resize image
                    
                    oi=cv2.imread(file)
                    resized = cv2.resize(oi, dim, interpolation = cv2.INTER_AREA)
                    #original = cv2.cvtColor(file, cv2.COLOR_BGR2GRAY)
                    #cv2.imshow("comp",oresized)
                    #cv2.waitKey()
                    #cv2.imshow("org",resized)
                    #cv2.waitKey()
                    #ssim_score = structural_similarity(oresized, resized, multichannel=True)
                    #print(ssim_score)
                    
        msg=op+","+filename+","+str(acc)+","+str(stg)
        resp = make_response(json.dumps(msg))
        return resp


        #image = cv2.imread("D:\\Upload\\"+ filename, 1)
        #show_image('Original image', image)

        '''
        if op=="Not Identified":
            if val%4==0:
                op=classes[1]
            elif val%3==0:
                op=classes[0]
            elif val%2==0:
                op=classes[3]
            else:
                op=classes[2]
        
        if(is_grey_scale(fn)==False):
            op='Invalid Image'
            acc=0
            
            
        msg=op+","+filename+","+str(acc)
        print(msg)        
        
        resp = make_response(json.dumps(msg))
        return resp'''

def show_image(title, image):
    cv2.imshow(title, image)
    cv2.waitKey(0)
    cv2.destroyAllWindows()

def show_image_plt(title, image, cmap = None):
    plt.figure(title)
    plt.imshow(image,cmap=cmap)
    plt.axis('off')
    plt.show()

def cvt_image_colorspace(image, colorspace = cv2.COLOR_BGR2GRAY):
    return cv2.cvtColor(image, colorspace)

def median_filtering(image, kernel_size=3):
    '''

    :param image: grayscale image
    :param kernel_size: kernel size should be odd number
    :return: blurred image
    '''

    return cv2.medianBlur(image, kernel_size)


def apply_threshold(image, **kwargs):
    '''

    :param image: image object
    :param kwargs: threshold parameters - dictionary
    :return:
    '''
    threshold_method = kwargs['threshold_method']
    max_value = kwargs['pixel_value']
    threshold_flag = kwargs.get('threshold_flag', None)
    if threshold_flag is not None:
        ret, thresh1 = cv2.adaptiveThreshold(image, max_value, threshold_method,cv2.THRESH_BINARY, kwargs['block_size'], kwargs['const'])
    else:
        ret, thresh1 = cv2.threshold(image, kwargs['threshold'], max_value, threshold_method)
    return thresh1

def sobel_filter(img,x,y,kernel_size = 3):
    return cv2.Sobel(img, cv2.CV_8U, x,y, ksize=kernel_size)
    
if __name__ == '__main__':
    app.run(host='0.0.0.0')
