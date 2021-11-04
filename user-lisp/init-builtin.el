;; (use-package isearch
;;   :ensure nil
;;   :init
;;   (isearch-mode 1)
;;   (require 'isearch)
;;   :bind (:map isearch-mode-map
;;          ([return] . my/isearch-repeat)
;;          ([escape] . isearch-exit))
;;   :config
;;   (defvar my/isearch--direction nil)
;;   (define-advice isearch-exit (:after nil)
;;     (setq-local my/isearch--direction nil))
;;   (define-advice isearch-repeat-forward (:after (_))
;;     (setq-local my/isearch--direction 'forward))
;;   (define-advice isearch-repeat-backward (:after (_))
;;     (setq-local my/isearch--direction 'backward))
;;   )

(custom-set-faces (if (not window-system) '(default ((t (:background "nil"))))))
;; (set-face-background 'default "undefined")
(provide 'init-builtin)
