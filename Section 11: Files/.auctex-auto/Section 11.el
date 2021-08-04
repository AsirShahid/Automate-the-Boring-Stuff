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
    "sec:orgf6652a5"
    "sec:org50c6d77"
    "sec:org5d741b6"
    "sec:org31de0c9"
    "sec:orgf5bcd43"
    "sec:org6536035"
    "sec:orge088e1f"
    "sec:org8ed5a47"
    "sec:orgd770a7b"
    "sec:org88cbb13"
    "sec:org52ab4f6"
    "sec:orgc6a2b92"
    "sec:org8caff01"
    "sec:org7274734"
    "sec:orged5ecf8"
    "sec:org499ca03"
    "sec:orgdf0cbbc"
    "sec:orgd1dbc9b"
    "sec:org6ecfcaa"
    "sec:orgada3a1f"
    "sec:org9b90b3a"
    "sec:org13c3b11"
    "sec:org24eb144"
    "sec:org115e358"
    "sec:orge5cd955"
    "sec:org237e43a"
    "sec:org65b4a4f"
    "sec:org6ef3382"
    "sec:org6f77e1a"
    "sec:org6e78db4"
    "sec:org4432caa"
    "sec:org7e5e4cb"
    "sec:org9a6d682"
    "sec:org1ff82b6"
    "sec:orge9376d2"
    "sec:orgfb4c83a"
    "sec:org317b466"
    "sec:orgc3a679a"
    "sec:org811cd8d"
    "sec:org227b8c6"))
 :latex)

