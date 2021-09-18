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
(provide 'init-builtin)
