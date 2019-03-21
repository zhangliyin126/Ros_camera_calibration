;; Auto-generated. Do not edit!


(when (boundp 'my_opencv::CalibrationRGB)
  (if (not (find-package "MY_OPENCV"))
    (make-package "MY_OPENCV"))
  (shadow 'CalibrationRGB (find-package "MY_OPENCV")))
(unless (find-package "MY_OPENCV::CALIBRATIONRGB")
  (make-package "MY_OPENCV::CALIBRATIONRGB"))

(in-package "ROS")
;;//! \htmlinclude CalibrationRGB.msg.html


(defclass my_opencv::CalibrationRGB
  :super ros::object
  :slots (_R _G _B ))

(defmethod my_opencv::CalibrationRGB
  (:init
   (&key
    ((:R __R) (make-array 0 :initial-element 0 :element-type :integer))
    ((:G __G) (make-array 0 :initial-element 0 :element-type :integer))
    ((:B __B) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _R __R)
   (setq _G __G)
   (setq _B __B)
   self)
  (:R
   (&optional __R)
   (if __R (setq _R __R)) _R)
  (:G
   (&optional __G)
   (if __G (setq _G __G)) _G)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:serialization-length
   ()
   (+
    ;; uint32[] _R
    (* 4    (length _R)) 4
    ;; uint32[] _G
    (* 4    (length _G)) 4
    ;; uint32[] _B
    (* 4    (length _B)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _R
     (write-long (length _R) s)
     (dotimes (i (length _R))
       (write-long (elt _R i) s)
       )
     ;; uint32[] _G
     (write-long (length _G) s)
     (dotimes (i (length _G))
       (write-long (elt _G i) s)
       )
     ;; uint32[] _B
     (write-long (length _B) s)
     (dotimes (i (length _B))
       (write-long (elt _B i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _R
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _R (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _R i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _G
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _G (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _G i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _B
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _B (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _B i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get my_opencv::CalibrationRGB :md5sum-) "69843753f2755d668ff7558392825518")
(setf (get my_opencv::CalibrationRGB :datatype-) "my_opencv/CalibrationRGB")
(setf (get my_opencv::CalibrationRGB :definition-)
      "uint32[] R
uint32[] G
uint32[] B
")



(provide :my_opencv/CalibrationRGB "69843753f2755d668ff7558392825518")


