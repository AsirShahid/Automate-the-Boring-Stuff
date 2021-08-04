(TeX-add-style-hook
 "Section 10"
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
    "sec:orgbfc0eae"
    "sec:orgaa2316f"
    "sec:org2c61f7a"
    "sec:org82401e1"
    "sec:org6e8a328"
    "sec:org16c25e9"
    "sec:orgce0fed6"
    "sec:orgeff8ea5"
    "sec:org5c305ca"
    "sec:org0394f15"
    "sec:org53da1bb"
    "sec:org31f00b0"
    "sec:orgd29305f"
    "sec:org49a2b8a"
    "sec:orgeea0d55"
    "sec:org749189e"
    "sec:org6de5c72"))
 :latex)

