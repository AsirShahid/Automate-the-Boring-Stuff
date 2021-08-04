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
    "sec:org72a39db"
    "sec:orgd089e9f"
    "sec:orge851fc7"
    "sec:org4ea240e"
    "sec:org0714e4f"
    "sec:orgaac57fb"
    "sec:org9756d7b"
    "sec:orga57d4d7"
    "sec:org24fcc3f"
    "sec:org73d9c92"
    "sec:org5c1204b"
    "sec:orgcaea4da"
    "sec:orgd43add5"
    "sec:orge708893"
    "sec:orgf3352f3"
    "sec:org17e8928"
    "sec:orgc481f4f"
    "sec:orgd915238"
    "sec:org2bcbb1e"
    "sec:org325e87c"
    "sec:orgdf1de39"
    "sec:orgee3827d"))
 :latex)

