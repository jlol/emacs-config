;;(require 'evil)

(require 'package) ;;
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize) ;; 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
 '(helm-ag-command-option "--all-text")
 '(helm-ag-ignore-buffer-patterns (quote ("\\.txt\\'" "\\.mkd\\'")))
 '(helm-ag-insert-at-point (quote symbol))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail org-w3m org-drill)))
 '(package-selected-packages
   (quote
    (company-flx flx-isearch flx git-timemachine helm-ag org-bullets cargo flycheck-rust rust-auto-use rust-mode aggressive-indent drag-stuff multiple-cursors ace-jump-mode treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil treemacs neotree org-evil evil-leader evil-nerd-commenter evil dashboard auto-org-md projectile ibuffer-vc expand-region company magit diff-hl counsel swiper use-package gdscript-mode markdown-mode org org-ac org-agenda-property org-autolist org-kanban org-wc yasnippet mark-multiple))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

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
(require 'setup-programming)
(require 'setup-convenience)
(require 'setup-interface)
(require 'setup-navigation)
(require 'setup-rust)
(require 'setup-org)
(require 'setup-misc)
(require 'setup-lsp)
