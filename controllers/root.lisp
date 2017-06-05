(defpackage personal-website/controllers/root
  (:use :cl
        :utopian)
  (:export :index))
(in-package :personal-website/controllers/root)

(defun index (params)
  (declare (ignore params))
  (render nil :template :index))
