
(defun my-python-mode-setup ()
;; LSP_MODE
    (require 'setup-lsp)

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred


;;    (use-package lsp-mode
;;		 :hook ((python-mode . lsp))
;;		 :commands lsp)

;; Uncomment to use LSP
;;    (lsp)
;;    (lsp-register-custom-settings '(("pyls.plugins.pyls_black.enabled" t t))) 
;; END LSP_MODE

;; ELPY
;;	(use-package elpy)
;;	(elpy-enable)

	;; Enable Flycheck
;;	(when (require 'flycheck nil t)
;;	  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;  	  (add-hook 'elpy-mode-hook 'flycheck-mode))

	;; Enable autopep8
;;	(use-package py-autopep8)
;;	(use-package blacken)
;;	(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

	;; Shortcuts
;;	(local-set-key [ f9 ] 'elpy-goto-definition)
;;	(local-set-key [ f12 ] 'xref-find-definitions-other-window)

;; END ELPY

;; ANACONDA
;;	(use-package anaconda-mode)
;;	(add-hook 'python-mode-hook 'anaconda-mode)
;;	(local-set-key [ f12 ] 'xref-find-definitions-other-window)
;; END ANACONDA

	(local-set-key [(control f2)] 'lsp-rename)
        (local-set-key [(control ?\.)] 'complete-symbol)

	;; Line length ruler
	(setq-default fill-column 79)
	(display-fill-column-indicator-mode)
)

(add-hook 'python-mode-hook 'my-python-mode-setup t)
(provide 'setup-python)
