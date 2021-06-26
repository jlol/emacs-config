;; IVY ---------------------------
(provide 'ivy-config)

(use-package ivy)
(use-package swiper)
(use-package counsel)
;; Fuzzy search
(use-package flx)
(use-package flx-isearch)
(use-package swiper)
;;(setq ivy-re-builders-alist
;;      '(;;(t . ivy--regex-plus)
;;	;;(t      . ivy--regex-ignore-order)
;;        (t      . ivy--regex-fuzzy)
;;        ))
;(setq ivy-re-builders-alist
;      '((swiper . regexp-quote)
;        (t      . ivy--regex-fuzzy)))
(setq ivy-re-builders-alist
      '((swiper . ivy--regex-plus)
        (t . ivy--regex-fuzzy)))
(setq ivy-initial-inputs-alist nil)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(setq enable-recursive-minibuffers t)
(setq ivy-use-selectable-prompt t)
(define-key ivy-minibuffer-map (kbd "TAB") 'ivy-partial)

;; Avoid auto-complete if trying to type a new directory
;; that matches some existing file or directory name
(setq ivy-magic-slash-non-match-action nil)

;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)


