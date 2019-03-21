
(cl:in-package :asdf)

(defsystem "my_opencv-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CalibrationRGB" :depends-on ("_package_CalibrationRGB"))
    (:file "_package_CalibrationRGB" :depends-on ("_package"))
  ))