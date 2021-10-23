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
(require 'setup-plantuml)
(require 'setup-cplusplus)
(require 'setup-python)
(require 'setup-glsl)

(menu-bar-mode 0)
(tool-bar-mode -1)

(unless (package-installed-p 'spacemacs-theme)
  (package-install 'spacemacs-theme))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#273136" "#ff6d7e" "#a2e57b" "#ffed72" "#7cd5f1" "#7cd5f1" "#7cd5f1" "#f2fffc"])
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#a1efe4" "#fcfcfa"])
 '(compilation-message-face 'default)
 '(custom-enabled-themes '(leuven))
 '(custom-safe-themes
   '("6f4421bf31387397f6710b6f6381c448d1a71944d9e9da4e0057b3fe5d6f2fad" "4a5aa2ccb3fa837f322276c060ea8a3d10181fecbd1b74cb97df8e191b214313" "e19ac4ef0f028f503b1ccafa7c337021834ce0d1a2bca03fcebc1ef635776bea" "0466adb5554ea3055d0353d363832446cd8be7b799c39839f387abb631ea0995" "1d78d6d05d98ad5b95205670fe6022d15dabf8d131fe087752cc55df03d88595" "8feca8afd3492985094597385f6a36d1f62298d289827aaa0d8a62fe6889b33c" "ae88c445c558b7632fc2d72b7d4b8dfb9427ac06aa82faab8d760fff8b8f243c" "8efa3d21b3fa1ac084798fae4e89848ec26ae5c724b9417caf4922f4b2e31c2a" "78c4238956c3000f977300c8a079a3a8a8d4d9fee2e68bad91123b58a4aa8588" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "fe2539ccf78f28c519541e37dc77115c6c7c2efcec18b970b16e4a4d2cd9891d" "246a9596178bb806c5f41e5b571546bb6e0f4bd41a9da0df5dfbca7ec6e2250c" "d268b67e0935b9ebc427cad88ded41e875abfcc27abd409726a92e55459e0d01" "b02eae4d22362a941751f690032ea30c7c78d8ca8a1212fdae9eecad28a3587f" "c8b83e7692e77f3e2e46c08177b673da6e41b307805cd1982da9e2ea2e90e6d7" "46b2d7d5ab1ee639f81bde99fcd69eb6b53c09f7e54051a591288650c29135b0" "fb83a50c80de36f23aea5919e50e1bccd565ca5bb646af95729dc8c5f926cbf3" "24168c7e083ca0bbc87c68d3139ef39f072488703dcdd82343b8cab71c0f62a7" "d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "c7eb06356fd16a1f552cfc40d900fe7326ae17ae7578f0ef5ba1edd4fdd09e58" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "f6665ce2f7f56c5ed5d91ed5e7f6acb66ce44d0ef4acfaa3a42c7cfe9e9a9013" "cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53" "4f1d2476c290eaa5d9ab9d13b60f2c0f1c8fa7703596fa91b235db7f99a9441b" "e8df30cd7fb42e56a4efc585540a2e63b0c6eeb9f4dc053373e05d774332fc13" "90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940" "f149d9986497e8877e0bd1981d1bef8c8a6d35be7d82cba193ad7e46f0989f6a" "835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(exwm-floating-border-color "#3c454a")
 '(fci-rule-color "#5a6568")
 '(helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
 '(helm-ag-command-option "--all-text")
 '(helm-ag-ignore-buffer-patterns '("\\.txt\\'" "\\.mkd\\'"))
 '(helm-ag-insert-at-point 'symbol)
 '(highlight-changes-colors '("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors ((("#33433c") . 0) (("#2f4148") . 20)))
 '(hl-paren-background-colors '("#2492db" "#95a5a6" nil))
 '(hl-paren-colors '("#ecf0f1" "#ecf0f1" "#c0392b"))
 '(hl-sexp-background-color "#efebe9")
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#3a81c3")
     ("OKAY" . "#3a81c3")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#42ae2c")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(jdee-db-active-breakpoint-face-colors (cons "#131313" "#ffed72"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#131313" "#a2e57b"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#131313" "#545f62"))
 '(lsp-pyls-plugins-flake8-ignore '("D100" "D101" "D102" "D105" "D107"))
 '(lsp-pyls-plugins-flake8-max-line-length 79)
 '(lsp-pyls-plugins-pycodestyle-ignore '("D100" "D101" "D102" "D105" "D107"))
 '(lsp-pyls-plugins-pycodestyle-max-line-length 79)
 '(lsp-pyls-plugins-pydocstyle-add-ignore '("D100" "D101" "D102" "D105" "D107"))
 '(lsp-pyls-plugins-pydocstyle-ignore '("D100" "D101" "D102" "D105" "D107"))
 '(lsp-pylsp-plugins-flake8-ignore ["D100" "D101" "D102" "D105" "D107"])
 '(lsp-pylsp-plugins-pycodestyle-exclude [])
 '(lsp-pylsp-plugins-pycodestyle-ignore ["D100" "D101" "D102"])
 '(lsp-pylsp-plugins-pydocstyle-add-ignore ["D101" "D102"])
 '(lsp-pylsp-plugins-pydocstyle-ignore ["D102" "D100" "D101" "D105" "D107"])
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   '("#032f62" "#6a737d" "#d73a49" "#6a737d" "#005cc5" "#6f42c1" "#d73a49" "#6a737d"))
 '(objed-cursor-color "#ff6d7e")
 '(org-plantuml-executable-args '("-headless"))
 '(package-selected-packages
   '(lsp-pyright zweilight-theme zenburn-theme yasnippet yaml-mode which-key volatile-highlights use-package undo-tree treemacs-projectile treemacs-magit treemacs-icons-dired treemacs-evil spacemacs-theme soft-morning-theme shader-mode plantuml-mode page-break-lines org-plus-contrib org-evil org-bullets org-babel-eval-in-repl multiple-cursors monokai-theme monokai-pro-theme monokai-alt-theme monitor material-theme lsp-ui lsp-treemacs key-chord kanban jenkinsfile-mode ibuffer-vc helpful helm-lsp helm-ag gruvbox-theme graphviz-dot-mode github-theme github-modern-theme git-timemachine flycheck-tip flx-isearch flatui-theme expand-region evil-nerd-commenter evil-leader duplicate-thing drag-stuff doom-themes diff-hl dashboard counsel company-glsl company-flx column-enforce-mode ccls ample-zen-theme ample-theme ace-jump-mode))
 '(pdf-view-midnight-colors (cons "#f2fffc" "#273136"))
 '(plantuml-default-exec-mode 'jar t)
 '(plantuml-executable-args '("-headless"))
 '(plantuml-java-args
   '("-Djava.awt.headless=true" "-jar" "--illegal-access=deny" "-Dplantuml.include.path=c:/Users/julucas/Documents"))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(rustic-ansi-faces
   ["#273136" "#ff6d7e" "#a2e57b" "#ffed72" "#7cd5f1" "#7cd5f1" "#7cd5f1" "#f2fffc"])
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(vc-annotate-background "#273136")
 '(vc-annotate-color-map
   (list
    (cons 20 "#a2e57b")
    (cons 40 "#c1e778")
    (cons 60 "#e0ea75")
    (cons 80 "#ffed72")
    (cons 100 "#ffd971")
    (cons 120 "#ffc570")
    (cons 140 "#ffb270")
    (cons 160 "#d3bd9b")
    (cons 180 "#a7c9c6")
    (cons 200 "#7cd5f1")
    (cons 220 "#a7b2ca")
    (cons 240 "#d38fa4")
    (cons 260 "#ff6d7e")
    (cons 280 "#d46977")
    (cons 300 "#a96670")
    (cons 320 "#7e6269")
    (cons 340 "#5a6568")
    (cons 360 "#5a6568")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))

'(package-selected-packages
  '(ox-pandoc pandoc key-chord company-glsl glsl-mode lsp-treemacs soft-morning-theme flatui-theme github-modern-theme github-theme gruvbox-theme monokai-alt-theme monokai-pro-theme monokai-theme material-theme doom-themes zenburn-theme zweilight-theme ample-theme ample-zen-theme brutalist-theme ccls jenkinsfile-mode kanban org-babel-eval-in-repl yaml-mode graphviz-dot-mode plantuml-mode js-auto-format-mode js-format js2-mode shader-mode magit-gitflow magit-lfs json-navigator json-mode json-reformat dap-java dap-mode lsp-java eclim column-enforce-mode objc-font-lock omnisharp spacemacs-dark yasnippet which-key volatile-highlights use-package treemacs-projectile treemacs-magit treemacs-icons-dired treemacs-evil spacemacs-theme rust-auto-use org-plus-contrib org-evil org-drill-table org-bullets neotree multiple-cursors lsp-ui ibuffer-vc helpful helm-lsp helm-ag git-timemachine flycheck-tip flycheck-rust flx-isearch expand-region evil-nerd-commenter evil-leader duplicate-thing drag-stuff diff-hl dashboard counsel company-lsp company-flx cargo auto-org-md ace-jump-mode))  


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 140
                    :weight 'normal
                    :width 'normal)

;; FIX for slow ORG-Mode
(setq gc-cons-threshold (* 511 1024 1024))
(setq gc-cons-percentage 0.5)
(run-with-idle-timer 5 t #'garbage-collect)
(setq garbage-collection-messages t)

(electric-indent-mode -1)
