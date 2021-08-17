(eval-when-compile
  (require 'init-custom))

(use-package omnisharp
  :init
  (omnisharp-mode 1)
  :config
  (add-hook 'csharp-mode-hook 'omnisharp-mode)
  ;; (setq omnisharp-server-executable-path "/usr/local/bin/omnisharp")
  (setq omnisharp-server-executable-path "~/.emacs.d/omnisharp-osx/run")
  )

(add-hook 'csharp-mode-hook #'flycheck-mode)

(use-package company
  :config
  (add-to-list 'company-backends 'company-omnisharp)
  (add-hook 'csharp-mode-hook #'company-mode)
  )

(provide 'init-csharp)
