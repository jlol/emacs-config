(provide 'setup-csharp)

(use-package omnisharp)

;; Start omnisharp on csharp files
;;(add-hook 'csharp-mode-hook 'omnisharp-mode)

;; Completion
;;(eval-after-load
;;   'company
 ;;   '(add-to-list 'company-backends 'company-omnisharp))
;;
;;(add-hook 'csharp-mode-hook #'company-mode)

;; Flycheck
;;(add-hook 'csharp-mode-hook #'flycheck-mode)

(defun my-csharp-mode-setup ()
    (omnisharp-mode)
    (company-mode)
    (flycheck-mode)

    (setq indent-tabs-mode nil)
    (setq c-syntactic-indentation t)
    (c-set-style "ellemtel")
    (setq c-basic-offset 4)
    (setq truncate-lines t)
    (setq tab-width 4)
    (setq evil-shift-width 4)

    ;csharp-mode README.md recommends this too
    ;(electric-pair-mode 1)       ;; Emacs 24
    ;(electric-pair-local-mode 1) ;; Emacs 25

    (local-set-key (kbd "C-c r r") 'omnisharp-run-code-action-refactoring)
    (local-set-key (kbd "C-c C-c") 'recompile)    
    (global-set-key [(control ?\.)] 'company-omnisharp)
    (global-set-key [ f12 ] 'omnisharp-go-to-definition)
    (global-set-key [(control f12)] 'omnisharp-find-usages-with-ido)
    (global-set-key [(control f2)] 'omnisharp-rename)
    (local-set-key (kbd "C-c f") 'omnisharp-navigate-to-solution-member)
)

(add-hook 'csharp-mode-hook 'my-csharp-mode-setup t)
