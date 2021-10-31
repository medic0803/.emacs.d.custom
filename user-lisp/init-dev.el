;; python

(setq-default python-shell-interpreter "/Users/anthony/opt/anaconda3/bin/python3")
(require' dap-python)

;; require npm, use your system's package manager to install it
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))  ; or lsp-deferred
;; c/c++
(require 'dap-lldb)
(require 'dap-cpptools)
(require 'dap-gdb-lldb)

;; php
(require 'dap-php)

(provide 'init-dev)
