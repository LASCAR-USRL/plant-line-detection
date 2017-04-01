#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/videoio.hpp"
#include <iostream>
#include <ctime>

using namespace cv;
using namespace std;

class Image{
public:
    Mat data;
    string name;
};

class Line{
public:
    Line();
    Line(Point p1, Point p2);
    Point p1;
    Point P2;
};

class PlantLineDetection{
private:
    Image *images[7];
    int height = 0;
    int width = 0;

    // define the adaptative thresholds and properties
    int heightThreshold = 0;
    int colorThreshold[2] = {70, 255};
    int maxLineDistance = 20;//px

    //results display properties
    int resultFrameSize[2] = {220, 160};
    int grid[2]= {3,3};

    // for benchmark
    time_t startTime;
    time_t stopTime;
    float fps = 0;
    int frameCounter = 0;

public:
    PlantLineDetection();
    void setImage(Mat image);
    void detect();
    bool isParallelLines(Point p1, Point p2, Point p3, Point p4);
    float lineDistance(Point p1, Point p2, Point p3, Point p4);
    Point intersectPoint(Point p1, Point p2, Point p3, Point p4);
    Mat getResultsFrame();
};

PlantLineDetection::PlantLineDetection(){
    // load the images from the algorithm
    for(int i=0; i < 7; i++){
        this->images[i] = new Image();
    }

}

void PlantLineDetection::setImage(Mat frame){
    //get current time
    this->startTime = time(0);
    //number of frame
    this->frameCounter++;
    //get image size
    this->width = frame.size[1];
    this->height = frame.size[0];
    //set the frame results
    frame.copyTo(this->images[0]->data);
    this->images[0]->name = "Original Image";
    this->images[1]->data = Mat::zeros(this->height, this->width, frame.type());
    this->images[1]->name = "Green Extraction";
    this->images[2]->data = Mat::zeros(this->height, this->width, frame.type());
    this->images[2]->name = "Threshold Filter";
    this->images[3]->data = Mat::zeros(this->height, this->width, frame.type());
    this->images[3]->name = "Object Detection";
    this->images[4]->data = Mat::zeros(this->height, this->width, frame.type());
    this->images[4]->name = "Skeletonization";
    frame.copyTo(this->images[5]->data);
    this->images[5]->name = "Hough Lines";
    frame.copyTo(this->images[6]->data);
    this->images[6]->name = "Final Result";
}

void PlantLineDetection::detect(){
    for(int y=0; y < this->height; y++){

        bool isLine = false;
        int x1,x2 = 0;

        for(int x=0; x < this->width; x++){
            //get the pixelIm1 data
            Vec3b pixel = this->images[0]->data.at<Vec3b>(Point(x,y));
            int b = (int)pixel.val[0];
            int g = (int)pixel.val[1];
            int r = (int)pixel.val[2];

            // green extraction (method by GUO-QUAN JIANG)
            int greyLevel = 250;
            if ((2*g) <= (r + b)){
                greyLevel = 0;
            }
            else if((2*g) >= r+b+255){
                greyLevel = 255;
            }
            else{
                greyLevel = (2*g)-r-b;
            }

            this->images[1]->data.at<Vec3b>(Point(x,y)) = Vec3b(greyLevel, greyLevel, greyLevel);

            // threshold filter
            if(this->colorThreshold[0] <= greyLevel && greyLevel <= this->colorThreshold[1]){
                greyLevel = 255;
            }
            else{
                greyLevel = 0;
            }

            this->images[2]->data.at<Vec3b>(Point(x,y)) = Vec3b(greyLevel,greyLevel,greyLevel);

            // detect the object
            if(isLine == false && greyLevel == 255){
                x1 = x2 = x;
                isLine = true;
            }
            else if(isLine == true && greyLevel == 255){
                x2 = x;
            }
            else if(isLine == true && greyLevel == 0){
                this->images[3]->data.at<Vec3b>(Point(x1,y)) = Vec3b(255,255,255);
                this->images[3]->data.at<Vec3b>(Point(x2,y)) = Vec3b(255,255,255);
                if(x2 != 0){
                    int meanx = (x1+x2) / 2;
                    this->images[4]->data.at<Vec3b>(Point(meanx,y)) = Vec3b(255,255,255);
                }
                isLine = false;
                x1 = x2 = 0;
            }
        }
    }

    //hough transform
    /*vector<Vec2f> lines;
    HoughLines(this->images[4]->data, lines, 1, CV_PI/45, 30, 0, 0);
    //HoughLines(this->images[4]->data, lines, 2, CV_PI/45, 30, 0, 0);
    for(size_t i = 0; i < lines.size(); i++){
        //get the rho and theta values
        float rho = lines[i][0];
        float theta = lines[i][1];
        //calculate a and b
        double a = cos(theta);
        double b = sin(theta);
        //calculate the generic point
        double x0 = a*rho;
        double y0 = b*rho;
        //declare the points of line
        Point p1, p2;
        //calculate the points p1 and p2
        p1.x = cvRound(x0 + 1000*(-b));
        p1.y = cvRound(y0 + 1000*(a));
        p2.x = cvRound(x0 - 1000*(-b));
        p2.y = cvRound(x0 - 1000*(a));
        //manage lines
        line(this->images[5]->data, p1, p2, Scalar(0,0,255), 3, CV_AA);
    }*/
}

float PlantLineDetection::lineDistance(Point p1, Point p2, Point p3, Point p4){
    if(p1.x<p3.x){
        return p3.x - p1.x;
    }
    if(p1.x>=p3.x){
        return p1.x - p3.x;
    }
}

bool PlantLineDetection::isParallelLines(Point p1, Point p2, Point p3, Point p4){
    float m1=0, m2=0;

    if((p2.x-p1.x) != 0){
        m1 = (p2.y-p1.y)/(p2.x-p1.x);
    }
    if((p4.x-p3.x) != 0){
        m2 = (p4.y-p3.y)/(p4.x-p3.x);
    }

    if(m1==m2){
        return true;
    }

    return false;
}

Point PlantLineDetection::intersectPoint(Point p1, Point p2, Point p3, Point p4){
    int a1, a2, b1, b2, c1, c2;

    //calculate the coeficients for line 1 and 2
    a1 = p1.y - p2.y;
    b1 = p2.x - p1.x;
    c1 = (p1.x*p2.y) - (p2.x*p1.y);

    a2 = p3.y - p4.y;
    b2 = p4.x - p3.x;
    c2 = (p3.x*p4.y) - (p4.x*p3.y);

    //set the matrix a and b
    int a[2][2] = {{a1,b1},{a2,b2}};
    int b[2][1] = {{-c1},{-c2}};

    //create the opencv matrix
    Mat A = Mat(2,2, CV_32FC1, a);
    Mat B = Mat(2,1, CV_32FC1, b);

    //determinant
    if (determinant(A) != 0){
        //solve the eq ax=b
        Mat x = A.inv() * B;
        return Point(x);
    }
    else{
        //discards the line by placing the intersection point outside the image
        return Point(-1,-1);
    }
}

Mat PlantLineDetection::getResultsFrame(){
    int numCols = this->grid[0];
    int numRows = this->grid[1];
    Mat resultsImage = Mat::zeros(numRows*this->resultFrameSize[1], numCols*this->resultFrameSize[0], this->images[0]->data.type());
    int countx = 0;
    int county = 0;
    for(int i=0; i < 7; i++){
        //create temp image
        Mat tempImage = Mat::zeros(this->resultFrameSize[1], this->resultFrameSize[0], this->images[0]->data.type());
        //resize the image
        resize(this->images[i]->data,tempImage, Size(tempImage.cols,tempImage.rows) );
        //write name in frame
        putText(tempImage, this->images[i]->name, Point(25, 25), FONT_HERSHEY_COMPLEX, 0.3, Scalar(255, 255, 255), 1, LINE_AA);
        //copy temp image to resultsImage
        tempImage.copyTo(resultsImage(cv::Rect(countx*this->resultFrameSize[0], county*this->resultFrameSize[1],tempImage.cols, tempImage.rows)));
        //grid design
        countx++;
        if(countx == numCols){
            county++;
            countx = 0;
        }

    }
    //system("clear");
    //cout << "frame resolution = " << this->width << "x" << this->height << endl;
    //cout << "frame counter    = " << this->frameCounter << endl;
    //cout << "time per frame   = " << difftime(time(0), this->startTime) << "s" << endl;
    //cout << "fps              = " << (1/difftime(time(0), this->startTime)) << endl;
    //cout << "numberOfLines = " << 0 << endl;
    //cout << "finalLines = " << 0 << endl;

    return resultsImage;
}
