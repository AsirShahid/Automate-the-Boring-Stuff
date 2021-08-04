(TeX-add-style-hook
 "Section 10"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
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
    "sec:org54c94d1"
    "sec:org427929d"
    "sec:org3d955ff"
    "sec:org5202842"
    "sec:orgd1ae650"
    "sec:orga6e4dfd"
    "sec:orgc4697d4"
    "sec:org2c0115e"
    "sec:org5bdd47b"
    "sec:org79ee805"
    "sec:org55fe202"
    "sec:orgffe973b"
    "sec:orgb3bfc05"
    "sec:org1ef7702"
    "sec:org39b5520"
    "sec:org058a993"
    "sec:orgfa408f6"
    "sec:org76703ec"
    "sec:orgf2a1666"
    "sec:org51d6abc"
    "sec:org3b5ab90"
    "sec:orge45ce6c"
    "sec:org0446b50"
    "sec:org19bf05b"
    "sec:orgfb10a38"
    "sec:orga4185c0"
    "sec:org4742743"))
 :latex)

