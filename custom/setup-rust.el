(provide 'setup-rust)

(use-package rust-mode)
(use-package rust-auto-use)

(use-package flycheck-rust)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(use-package cargo)
(add-hook 'rust-mode-hook 'cargo-minor-mode)