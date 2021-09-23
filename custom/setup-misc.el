(provide 'setup-misc)

(use-package helm-ag)

(custom-set-variables
 '(helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
 '(helm-ag-command-option "--all-text")
 '(helm-ag-insert-at-point 'symbol)
 '(helm-ag-ignore-buffer-patterns '("\\.txt\\'" "\\.mkd\\'")))


(if (string= system-type "windows-nt")
    (progn
	; store all backup and autosave files in the tmp dir
;;	(setq backup-directory-alist (quote ((".*" . "c:/emacs_tmp"))))
;;	(setq auto-save-file-name-transforms  `((".*" , "c:/emacs_tmp" t))))
 
    (defconst emacs-tmp-dir (expand-file-name (format "emacs%d" (user-uid)) "c:/emacs_tmp/"))
    (setq backup-directory-alist `((".*" . ,emacs-tmp-dir)))
    (setq auto-save-file-name-transforms `((".*" ,emacs-tmp-dir t)))
    (setq auto-save-list-file-prefix emacs-tmp-dir)   
    )
    (progn (setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
    (setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))
    )
)

;; Scroll only one line at a time
(setq scroll-step 1)
