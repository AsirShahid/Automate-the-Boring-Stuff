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
    "sec:orgf5db76f"
    "sec:org7f28667"
    "sec:org296ae8a"
    "sec:org498c1f4"
    "sec:org0344841"
    "sec:orgdfd5c9c"
    "sec:orgb501a44"
    "sec:orgd6721c6"
    "sec:org1441938"
    "sec:org1a55f99"
    "sec:org359776c"
    "sec:org2547e04"
    "sec:orgafac397"
    "sec:orgab7dd62"
    "sec:orgaeede3c"
    "sec:org3f88512"
    "sec:orgbab3799"
    "sec:org4680e7e"
    "sec:org144a546"
    "sec:orga8abf36"
    "sec:orgecf8c08"
    "sec:org5313bb0"
    "sec:orgeda9acb"
    "sec:org64232c6"
    "sec:org2af474c"
    "sec:org78cbe6d"))
 :latex)

