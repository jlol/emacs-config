(provide 'setup-org)
;; ORG -------------------------------------------------------------------
;;;;Org mode configuration
;; Enable Org mode
(use-package org
  :ensure org-plus-contrib
  )
;;(use-package org-plus-contrib)
;;  :pin org)
                                        ;(require 'org-drill)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

(use-package org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))


