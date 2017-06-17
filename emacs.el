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
