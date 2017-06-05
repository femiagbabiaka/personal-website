(defpackage personal-website/config/routes
  (:use :cl
        :utopian
        :personal-website/config/application)
  (:export :*app*))
(in-package :personal-website/config/routes)

(defvar *app* (make-instance 'application))
(clear-routing-rules *app*)

;;
;; Routing rules

(route :GET "/" "root:index")
