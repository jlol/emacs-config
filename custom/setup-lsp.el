(provide 'setup-lsp)

(use-package lsp-mode)
(use-package flymake)

(use-package lsp-ui :commands lsp-ui-mode)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(setq lsp-ui-doc-delay 1)

(use-package company-lsp :commands company-lsp)
(push 'company-lsp company-backends)

(use-package helm-lsp)

(add-hook 'rust-mode-hook #'lsp)

;(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
;(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)

