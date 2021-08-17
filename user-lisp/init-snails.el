(eval-when-compile
  (require 'init-custom))


;; (use-package snails)
(add-to-list 'load-path "~/.emacs.d/other-packages/snails") ; add snails to your load-path
(require 'snails)


(add-hook 'snails-mode-hook (lambda () (evil-insert-state)))

(provide 'init-snails)
