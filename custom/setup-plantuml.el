(provide 'setup-plantuml)

(setq plantuml-default-exec-mode 'jar)
(setq plantuml-jar-path "C:/Users/julucas/Downloads/plantuml/plantuml.jar")
(setq org-plantuml-jar-path (expand-file-name "C:/Users/julucas/Downloads/plantuml/plantuml.jar"))
(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
(org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))
