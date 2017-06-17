* Institut Mines-Télécom LaTeX report model 

** Add theme to Emacs Org export 
The theme must be in your [[http://matsguru.com/latex-hack-adding-a-custom-cls-to-your-search-path/][LaTeX search path]].

#+BEGIN_SRC elisp
;; Add custom template to emacs org-mode LaTeX export

(require 'org)
(require 'ox-latex)
(setq org-latex-compiler "xelatex")
(add-to-list 'org-latex-classes
	      '("IMTA-report"
		"\\documentclass{IMTA-report}
[NO-DEFAULT-PACKAGES]
[PACKAGES]
[EXTRA]"
("\\section{%s}" . "\\section*{%s}")
("\\subsection{%s}" "\\newpage" "\\subsection*{%s}" "\\newpage")
("\\subsubsection{%s}" . "\\subsubsection*{%s}")
("\\paragraph{%s}" . "\\paragraph*{%s}")
("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
)
#+END_SRC


** Credits 
A project to convert the [[https://www.imt-atlantique.fr/][IMT Atlantique]] document model to a LaTeX project.
Architecture inspired by [[https://fr.sharelatex.com/templates/thesis/harvard-phd][Harvard Thesis]] 
