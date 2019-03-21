#include "opencv2/opencv.hpp"
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <my_opencv/CalibrationRGB.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <ros/ros.h>
#include <sensor_msgs/image_encodings.h>


static const std::string OPENCV_WINDOW = "Image window";
static bool g_bPause = false; //是否暂停图像
cv_bridge::CvImagePtr cv_ptr;
static std::vector<cv::Point> point; //储存记录点
static std::vector<float> recordRGB; //储存颜色均值


class ImageConverter {

  ros::NodeHandle nh_;
  image_transport::ImageTransport it_;
  image_transport::Subscriber image_sub_;
  image_transport::Publisher image_pub_;

public:

  ImageConverter() : it_(nh_) {
    image_sub_ = it_.subscribe("/camera/color/image_raw", 1,
                               &ImageConverter::imageCb, this);
    image_transport::Publisher image_pub_ = it_.advertise("/camera/myimage", 1);
    cv::namedWindow(OPENCV_WINDOW);
  }

  ~ImageConverter() { cv::destroyWindow(OPENCV_WINDOW); }

  static void on_MouseHandle(int event, int x, int y, int flags, void *param) {
    cv::Mat &_image = *(cv::Mat *)param;

    if (g_bPause == true) {
      switch (event) {
      case CV_EVENT_LBUTTONDOWN: {
        cv::Point _p(x, y);
        point.push_back(_p);
      } break;
      }
    }
  }

  void imageCb(const sensor_msgs::ImageConstPtr &msg) {
    try {
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    } catch (cv_bridge::Exception &e) {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    // Update GUI Window
    cv::imshow(OPENCV_WINDOW, cv_ptr->image);

    if (cv::waitKey(2) == 99) { //按c停止并转换到校准模式
      if (g_bPause == false) {
        g_bPause = true;
        point.clear();     //清理所选的点
        recordRGB.clear(); //清理颜色均值
      } else
        g_bPause = false;
    };

    if (g_bPause == true) {
      cv::setMouseCallback(OPENCV_WINDOW, on_MouseHandle,
                           (void *)&(cv_ptr->image)); //设定鼠标功能
    }

    while (1) {
      if (g_bPause == false)
        break;
      else {
        if (cv::waitKey(0) == 99) {
          g_bPause = false;
          if (point.size() != 0) {
            int r = 0;
            int g = 0;
            int b = 0;
            for (int i = 0; i < point.size(); i++) {
              r += cv_ptr->image.at<cv::Vec3b>(point[i].x, point[i].y)[0];
              g += cv_ptr->image.at<cv::Vec3b>(point[i].x, point[i].y)[1];
              b += cv_ptr->image.at<cv::Vec3b>(point[i].x, point[i].y)[2];
            }
            recordRGB.push_back(r / point.size());
            recordRGB.push_back(g / point.size());
            recordRGB.push_back(b / point.size());
          }
        }
      }
    }
//image_pub_.getNumSubscribers() !=0
    if (1) { //发布消息
      if (point.size() != 0) {
        /*
       std::vector<unsigned int> _r,_g,_b;
       for(int i=0;i<point.size();i++){
         _r.push_back(cv_ptr->image.at<cv::Vec3b>(point[i].x,point[i].y)[0]);
         _g.push_back(cv_ptr->image.at<cv::Vec3b>(point[i].x,point[i].y)[1]);
         _b.push_back(cv_ptr->image.at<cv::Vec3b>(point[i].x,point[i].y)[2]);

         my_opencv::CalibrationRGB msg;
         msg.R = _r;
         msg.G = _g;
         msg.B = _b;
         rgb_pub_.publish(msg);
       }*/

        std::vector<cv::Mat> imageRGB;
        cv::Mat imageNew;
        split(cv_ptr->image, imageRGB);

        float KR, KG, KB;
        int sum_mean = (recordRGB[0] + recordRGB[1] + recordRGB[2]) / 3;
        KR = recordRGB[0] / sum_mean;
        KG = recordRGB[1] / sum_mean;
        KB = recordRGB[2] / sum_mean;

        imageRGB[0] = imageRGB[0] / KR;
        imageRGB[1] = imageRGB[1] / KG;
        imageRGB[2] = imageRGB[2] / KB;

        merge(imageRGB, imageNew);
        sensor_msgs::ImagePtr msgout =
            cv_bridge::CvImage(std_msgs::Header(), "bgr8", imageNew)
                .toImageMsg();
        image_pub_.publish(msgout);
        cv::imshow("11111", imageNew);
      }
    }
  }
};


int main(int argc, char **argv) {
  ros::init(argc, argv, "image_converter");
  ImageConverter ic;
  ros::spin();
  return 0;
}