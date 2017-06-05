(push (uiop:pathname-directory-pathname *load-pathname*)
      asdf:*central-registry*)
(ql:quickload :personal-website :silent t)

(defpackage personal-website/app
  (:use :cl
        :personal-website
        :utopian)
  (:import-from :lack
                :builder)
  (:import-from :mito))
(in-package :personal-website/app)

(apply #'mito:connect-toplevel (connection-settings :maindb))

(builder
 (:static
  :path "/public/"
  :root (project-path #P"public/"))
 :accesslog
 (unless (productionp)
   :clack-errors)
 (when (config :error-log)
   `(:backtrace :output ,(config :error-log)))
 :session
 :csrf
 *app*)
