(provide 'setup-rust)


;;;;;;;;;;;;;;;; test

(defun my-rust-mode-setup ()
    (require 'setup-lsp)
    (add-hook 'rust-mode-hook #'lsp)
    (use-package rust-mode)
    (use-package rust-auto-use)

    (use-package flycheck-rust)
    ;(with-eval-after-load 'rust-mode
    ;  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

    (use-package cargo)
    ;(add-hook 'rust-mode-hook 'cargo-minor-mode)

    (with-eval-after-load 'rust-mode
       (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
    (cargo-minor-mode)

    ;; autocompletions for lsp (available with melpa enabled)
    (require 'company-lsp)
    (push 'company-lsp company-backends)
)

;;(add-hook 'rust-mode-hook 'my-rust-mode-setup t)
(add-hook 'rust-mode-hook #'lsp)
