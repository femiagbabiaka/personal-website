#-asdf3.1 (error "personal-website requires ASDF 3.1")
(asdf:defsystem personal-website
  :class :package-inferred-system
  :version "0.1"
  :author ""
  :license ""
  :description ""
  :depends-on ("personal-website/boot"
               :cl-syntax-annot))

(asdf:register-system-packages "personal-website/boot" '(:personal-website))
