(provide 'setup-completion)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: company              ;;
;;                               ;;
;; GROUP: Convenience -> Company ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(use-package company)
(add-hook 'after-init-hook 'global-company-mode)
(use-package company-flx)
(global-set-key [(control ?\,)] 'company-complete-common)
;(eval-after-load 'company
;  '(progn
;;     (define-key company-active-map (kbd "C-,") 'completion-at-point)))
;     (define-key company-active-map ("C-,") 'company-complete-common)))


;(global-set-key "C-," 'company-complete-common)
(setq company-idle-delay nil)

;;(require 'color)
;;(let ((bg (face-attribute 'default :background)))
;;    (custom-set-faces
;;     `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 2)))))
;;    `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
;;     `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
;;     `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
;;     `(company-tooltip-common ((t (:inherit font-lock-constant-face))))
;;     ))
