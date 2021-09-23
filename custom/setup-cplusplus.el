(provide 'setup-cplusplus)

(use-package lsp-mode
  :diminish "L"
  :init (setq lsp-keymap-prefix "C-l"
              lsp-enable-file-watchers nil
              lsp-enable-on-type-formatting nil
              lsp-enable-snippet nil)
  :hook (c-mode-common . lsp-deferred)
  :commands (lsp lsp-deferred))

;; Not using ccls now
;;(use-package ccls
;;  :init (setq ccls-sem-highlight-method 'font-lock)
;;  :hook ((c-mode c++-mode objc-mode) . (lambda () (require 'ccls) (lsp-deferred))))


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
