;; automatically close the minibuffer when it losed focus
(defun stop-using-minibuffer ()
  "kill the minibuffer"
  (when (and (>= (recursion-depth) 1) (active-minibuffer-window))
    (abort-recursive-edit)))

(add-hook 'mouse-leave-buffer-hook 'stop-using-minibuffer)


;; abort company when you need to RET
(defun moon/return-cancel-completion ()
  "Cancel completion and return."
  (interactive)
  (company-abort)
  (newline nil t))

(global-set-key (kbd "S-<return>") #'moon/return-cancel-completion)


(use-package imenu-list
  :ensure t
  :init
  (imenu-list-minor-mode)
  :config
  (set-default 'org-imenu-depth 5)
  ;; (add-hook 'dired-mode-hook 'imenu-list)
  )

;; make minibuffer float in center
;;(require 'ivy-posframe)
;; display at `ivy-posframe-style'
;;(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display)))

;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center)))
;;(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-window-center)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-bottom-left)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-window-bottom-left)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-top-center)))

;;(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-point)))
;;(ivy-posframe-mode 1)

(provide 'init-userWindow)
