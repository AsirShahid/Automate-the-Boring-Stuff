(TeX-add-style-hook
 "Section 11"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref")
   (LaTeX-add-labels
    "sec:orgcfb13bc"
    "sec:org0707d61"
    "sec:org7794771"
    "sec:org34e0546"
    "sec:orga11a621"
    "sec:org650a31c"
    "sec:org613a575"
    "sec:org2cf0c6d"
    "sec:org22247f1"
    "sec:org8d3f576"
    "sec:org3e496e1"
    "sec:orgd11936e"
    "sec:org56fa934"
    "sec:org420ef22"
    "sec:orgff4693b"
    "sec:org644e339"
    "sec:orgafd4f07"
    "sec:orgad74db1"
    "sec:org00cc324"
    "sec:orgb3a2218"
    "sec:org4334088"))
 :latex)

