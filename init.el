;;(require 'evil)

(require 'server)
(unless (server-running-p)
    (server-start)) 

(require 'package) ;;
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-initialize) ;; 


;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;; use-package to handle package installing
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)



;; add your modules path
(add-to-list 'load-path "~/.emacs.d/custom/")

(require 'ivy-config)
(require 'setup-editing)
(require 'setup-completion)
(require 'setup-programming)
(require 'setup-convenience)
(require 'setup-interface)
(require 'setup-navigation)
(require 'setup-rust)
(require 'setup-csharp)
(require 'setup-java)
(require 'setup-org)
(require 'setup-misc)
;(require 'setup-lsp)
(require 'setup-helper)
(require 'setup-python)
(require 'setup-cplusplus)


(menu-bar-mode 0)
(tool-bar-mode -1)

(unless (package-installed-p 'spacemacs-theme)
  (package-install 'spacemacs-theme))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
 '(helm-ag-command-option "--all-text")
 '(helm-ag-ignore-buffer-patterns '("\\.txt\\'" "\\.mkd\\'"))
 '(helm-ag-insert-at-point 'symbol)
 '(package-selected-packages
   '(php-mode jedi eglot company-lsp dap-mode helm-lsp lsp-mode lsp-treemacs lsp-ui json-navigator json-mode json-reformat dap-java lsp-java eclim column-enforce-mode objc-font-lock omnisharp spacemacs-dark yasnippet which-key volatile-highlights use-package treemacs-projectile treemacs-magit treemacs-icons-dired treemacs-evil spacemacs-theme rust-auto-use org-plus-contrib org-evil org-drill-table org-bullets neotree multiple-cursors ibuffer-vc helpful helm-ag git-timemachine flycheck-tip flycheck-rust flx-isearch expand-region evil-nerd-commenter evil-leader duplicate-thing drag-stuff diff-hl dashboard counsel company-flx cargo auto-org-md ace-jump-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "#ffffffffffff"))))
 '(company-scrollbar-fg ((t (:background "#ffffffffffff"))))
 '(company-tooltip ((t (:inherit default :background "#ffffffffffff"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face)))))

(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 140
                    :weight 'normal
                    :width 'normal)

