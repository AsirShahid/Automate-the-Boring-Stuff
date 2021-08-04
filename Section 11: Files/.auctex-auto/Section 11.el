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
    "sec:org6da9f76"
    "sec:orgf4f6947"
    "sec:org7980755"
    "sec:orgf5d22c7"
    "sec:org2371c47"
    "sec:orga66f5c6"
    "sec:org805f24b"
    "sec:org7c8cc2c"
    "sec:org798f582"
    "sec:orgee791d1"
    "sec:org4c12172"
    "sec:org7fe2529"
    "sec:org9075af3"
    "sec:orgdffc93f"
    "sec:orgaa5052b"
    "sec:org7387855"
    "sec:org33f00df"
    "sec:org80d05f3"
    "sec:orgdc23507"
    "sec:org2219765"
    "sec:org606b462"
    "sec:orge14b56e"
    "sec:org86e5799"
    "sec:org1949f7b"
    "sec:org1ae93a7"
    "sec:orgba5ee06"
    "sec:org79f3b9b"
    "sec:org84a6bd5"
    "sec:org7608051"
    "sec:orgacca07a"
    "sec:org0d5702f"
    "sec:org40d4eea"
    "sec:org71520d4"
    "sec:orgb305821"
    "sec:org5efff89"))
 :latex)

