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
    "sec:org94ec709"
    "sec:orge38d7e2"
    "sec:org54a8f2a"
    "sec:orgef71552"
    "sec:org7ffe334"
    "sec:orgea60a18"
    "sec:orgd1dd876"
    "sec:org754f887"
    "sec:org315320c"
    "sec:org2ca0a1c"
    "sec:org271e440"
    "sec:orgbf80838"
    "sec:orgd5de146"
    "sec:org2f82f79"
    "sec:org6ce6218"
    "sec:org416b1dd"
    "sec:orgc0c13fc"
    "sec:orgf150393"
    "sec:org94bb7c3"
    "sec:orgffac252"
    "sec:org886ec0f"
    "sec:org28e6b5a"
    "sec:org0e0fec2"
    "sec:org9d09c74"
    "sec:org833ccd3"
    "sec:orgfecdd7b"
    "sec:orgfe24515"
    "sec:orgf52691f"
    "sec:orgb74e124"
    "sec:org6bfedf8"
    "sec:org3556497"
    "sec:org2fdab0c"
    "sec:orgb615e04"
    "sec:org57474f7"
    "sec:orga1d9307"
    "sec:org9688e03"
    "sec:org9ae6c38"
    "sec:orga7d3bb9"
    "sec:org7596aa4"
    "sec:orga3aff51"
    "sec:org6acc0a5"
    "sec:org25cbd04"
    "sec:orgca8b764"
    "sec:orga76852f"
    "sec:org3447d11"
    "sec:org3426e47"
    "sec:org9d24fbf"
    "sec:orgb305243"
    "sec:org79fabf1"))
 :latex)

