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
    "sec:org4238179"
    "sec:orgaffca4e"
    "sec:orgf004cef"
    "sec:org96eeb33"
    "sec:orgc01deb3"
    "sec:orga5fe18a"
    "sec:org6c22e2b"
    "sec:org35802ed"
    "sec:org66a20ed"
    "sec:org1d164d0"
    "sec:org45e05b3"
    "sec:org7ef7eec"
    "sec:org1162c6f"
    "sec:org2f07529"
    "sec:org5f39acf"
    "sec:orgdb30002"
    "sec:orgf097937"
    "sec:orgad0b03a"
    "sec:org532ebb1"
    "sec:org9423fad"
    "sec:orgbf438c0"
    "sec:orga83f5c1"
    "sec:orga524ad2"
    "sec:org8ceea4e"
    "sec:org2f85978"
    "sec:org541cdde"
    "sec:orgf42615a"
    "sec:org4c45975"
    "sec:org8fb95be"
    "sec:orgfaa81c9"
    "sec:orgbdecb30"
    "sec:orge44edd1"
    "sec:orgade6e10"
    "sec:orgdae3e4b"
    "sec:orgc8b9057"
    "sec:orga43f392"
    "sec:org22139b5"
    "sec:org732d881"
    "sec:org3fbc4ba"
    "sec:org42ad127"
    "sec:org0614349"
    "sec:org5087f44"
    "sec:org10e4ef6"
    "sec:org9e9da03"
    "sec:org42f33d1"
    "sec:orgcd6c895"
    "sec:org0a7c439"))
 :latex)

