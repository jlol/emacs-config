(provide 'setup-interface)
;;;;;;;;;;;;;;
;; DASHBOARD
;;;;;;;;;;;
(use-package dashboard)
(dashboard-setup-startup-hook)
;; Or if you use use-package
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
