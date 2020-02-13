(provide 'setup-java)



(defun my-java-mode-setup ()
  (require 'cc-mode)

  (use-package projectile :ensure t)
  (use-package yasnippet :ensure t)
  (use-package lsp-mode :ensure t)
  (use-package hydra :ensure t)
  (use-package company-lsp :ensure t)
  (use-package lsp-ui :ensure t)
  (use-package lsp-java :ensure t :after lsp
	       :config (add-hook 'java-mode-hook 'lsp))

  (use-package dap-mode
	       :ensure t :after lsp-mode
	       :config
	       (dap-mode t)
	       (dap-ui-mode t))

;  (use-package dap-java :after (lsp-java))
  (require 'dap-java)

  
)

(add-hook 'java-mode-hook 'my-java-mode-setup t)

