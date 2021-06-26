(provide 'setup-cplusplus)

(defun my-cplusplus-mode-setup ()
   (use-package lsp-mode :commands lsp :ensure t)
    (use-package lsp-ui :commands lsp-ui-mode :ensure t)
    (use-package company-lsp
	     :ensure t
       	     :commands company-lsp
	     :config (push 'company-lsp company-backends)) 

    (use-package lsp-mode
		 :hook ((c++-mode . lsp))
		 :commands lsp)
  (use-package ccls
  :ensure t
  :config
  (setq ccls-executable "/usr/bin/ccls")
  (setq lsp-prefer-flymake nil)
  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))

)

;;;;;;;;;;;;;;; EGLOT
;(setq company-backends
;      (cons 'company-capf
;            (remove 'company-capf company-backends)))
;(require 'eglot)
;(add-to-list 'eglot-server-programs
;             `((c++-mode) "/usr/bin/clangd"))
;(add-hook 'c++-mode-hook 'eglot-ensure)
;;;;;;;;;;;;;;;;;;;;

(add-hook 'c++-mode-hook 'my-cplusplus-mode-setup t)
(add-hook 'c-mode-hook 'my-cplusplus-mode-setup t)
