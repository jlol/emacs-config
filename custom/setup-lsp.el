(provide 'setup-lsp)

(use-package lsp-mode)
(use-package flymake)

(use-package lsp-ui :commands lsp-ui-mode)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(setq lsp-ui-doc-delay 1)

(use-package company-lsp :commands company-lsp)
(push 'company-lsp company-backends)

(use-package helm-lsp)


;;(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
;;(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)

;;(global-set-key [ f12 ] 'lsp-find-definition)

(local-set-key (kbd "C-c t l") 'lsp-lens-mode)
(local-set-key [ f7 ] 'lsp-ui-peek-find-references)
(local-set-key [ f8 ] 'lsp-find-references)
(local-set-key [ f9 ] 'lsp-find-definition)
(local-set-key [ f12 ] 'xref-find-definitions-other-window)

(local-set-key [(control f2)] 'lsp-rename)

(local-set-key (kbd "C-c c r") 'helm-lsp-code-actions)
(local-set-key (kbd "C-c f") 'helm-lsp-workspace-symbol)
(local-set-key (kbd "C-c F") 'helm-lsp-global-workspace-symbol)

