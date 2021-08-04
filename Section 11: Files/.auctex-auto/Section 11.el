(TeX-add-style-hook
 "Section 11"
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
    "sec:orgd447ee9"
    "sec:org9eb6bd6"
    "sec:org43bf4be"
    "sec:org89c5d04"
    "sec:org42019a9"
    "sec:org1c3b7d6"
    "sec:orgfd4f38f"
    "sec:orgc5fa1f4"
    "sec:orgc8e6bfe"
    "sec:org4c6b12f"
    "sec:org29017e6"
    "sec:orgf2d5b5f"
    "sec:org984e377"
    "sec:org3ce8e23"
    "sec:orgcdeead9"
    "sec:org3798f9a"
    "sec:org0f57eca"
    "sec:org7f276eb"
    "sec:org9fa0b84"
    "sec:org6725d8b"
    "sec:orge3a212f"
    "sec:orgf572b40"
    "sec:org162a967"
    "sec:orgaabdee8"
    "sec:orgc7a4ee1"
    "sec:orgada0c51"
    "sec:orgddb356e"
    "sec:org80fb651"
    "sec:org7121d86"
    "sec:org6edfab4"
    "sec:orgb725f9b"
    "sec:org602cc91"
    "sec:orgb4a675a"
    "sec:org3518d60"
    "sec:org0095e3f"
    "sec:org8c32959"
    "sec:org5e8b2af"
    "sec:orgde7134e"
    "sec:org6bfdc8b"
    "sec:org061bd6c"
    "sec:org0a43f89"
    "sec:org7305855"
    "sec:orgbe2fb31"
    "sec:org3d27d38"
    "sec:org802caf5"
    "sec:orgeb144a9"
    "sec:org5570b74"
    "sec:orga1e0552"
    "sec:orgf7958bd"))
 :latex)

