(eval-when-compile
  (require 'init-custom))

(use-package ag
  :ensure t)


;; please install ag on emacs and brew install the_silver_searcher first
(use-package helm-ag
  :ensure t)

(provide 'init-helm)
