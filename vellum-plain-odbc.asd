(asdf:defsystem #:vellum-plain-odbc
  :name "vellum-plain-odbc"
  :description "plain-odbc integration with vellum"
  :version "1.0.0"
  :license "BSD simplified"
  :author "Marek Kochanowicz"
  :depends-on ( #:iterate
                #:serapeum
                (:version #:vellum ((>= "1.2.0")))
                #:alexandria
                #:documentation-utils-extensions
                #:plain-odbc)
  :serial T
  :pathname "source"
  :components ((:file "package")
               (:file "code")))
