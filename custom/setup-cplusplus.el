(provide 'setup-cplusplus)

(use-package lsp-mode
  :diminish "L"
  :init (setq lsp-keymap-prefix "C-l"
              lsp-enable-file-watchers nil
              lsp-enable-on-type-formatting nil
              lsp-enable-snippet nil)
  :hook (c-mode-common . lsp-deferred)
  :commands (lsp lsp-deferred))

(defun my-cplusplus-mode-setup ()
    
    (flycheck-mode)
    (setq flycheck-idle-change-delay 2) ; in seconds

    ;;(setq indent-tabs-mode nil)
    (setq c-syntactic-indentation t)
    ;;(c-set-style "ellemtel")
    (setq c-basic-offset 4)
    (setq truncate-lines t)
    (setq tab-width 4)
    (setq evil-shift-width 4)

    (electric-indent-mode)

    (global-set-key [(control ?\.)] 'company-complete-common)
    (global-set-key [(control f12)] 'lsp-find-definition)
    (global-set-key [ f12 ] 'lsp-find-declaration)
    (global-set-key [ f9 ] 'flycheck-next-error)
    (global-set-key [(control f7)] 'lsp-find-references)
    (global-set-key [(control f2)] 'lsp-rename)
    (global-set-key (kbd "<M-return>") 'lsp-execute-code-action)
    (global-set-key [(control f11)] 'next-error)
    (global-set-key (kbd "C-c i") 'c-indent-line-or-region)
    (global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
    (global-set-key [(control f2)] 'lsp-rename)
)

(add-hook 'c-mode-common 'my-cplusplus-mode-setup t)
(add-hook 'c++-mode-hook 'my-cplusplus-mode-setup t)

;;=======
;; OLD: ccls and eglot config
;;(defun my-cplusplus-mode-setup ()
;;   (use-package lsp-mode :commands lsp :ensure t)
;;    (use-package lsp-ui :commands lsp-ui-mode :ensure t)
;;    (use-package company-lsp
;;	     :ensure t
;;       	     :commands company-lsp
;;	     :config (push 'company-lsp company-backends)) 
;;
;;    (use-package lsp-mode
;;		 :hook ((c++-mode . lsp))
;;		 :commands lsp)
;;  (use-package ccls
;;  :ensure t
;;  :config
;;  (setq ccls-executable "/usr/bin/ccls")
;;  (setq lsp-prefer-flymake nil)
;;  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))
;;  :hook ((c-mode c++-mode objc-mode) .
;;         (lambda () (require 'ccls) (lsp))))
;;
;;)
;;
;;;;;;;;;;;;;;;;; EGLOT
;;;(setq company-backends
;;;      (cons 'company-capf
;;;            (remove 'company-capf company-backends)))
;;;(require 'eglot)
;;;(add-to-list 'eglot-server-programs
;;;             `((c++-mode) "/usr/bin/clangd"))
;;;(add-hook 'c++-mode-hook 'eglot-ensure)
;;;;;;;;;;;;;;;;;;;;;;
;;
;;(add-hook 'c++-mode-hook 'my-cplusplus-mode-setup t)
;;(add-hook 'c-mode-hook 'my-cplusplus-mode-setup t)
