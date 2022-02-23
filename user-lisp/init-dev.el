;; python

(require' dap-python)


(if (string= system-type "darwin")
    (progn
      ;; (setq python-shell-interpreter "/opt/homebrew/bin/python3.9")
      ;; (setq python-shell-interpreter "python3")
      (setq python-shell-exec-path nil)
      ;; (setq-default python-shell-interpreter "/opt/homebrew/bin/python3.9")
      ;; (setq-default python-shell-interpreter "python3")

      ;; (setq lsp-beancount-python-interpreter "/opt/homebrew/bin/python3.9")
      ;; (setq lsp-beancount-python-interpreter "python3")
      ;; (setq lsp-pyright-python-executable-cmd "/opt/homebrew/bin/python3.9")
      ;; (setq lsp-pyright-python-executable-cmd "python3")
      ))

;; c/c++
(require 'dap-lldb)
(require 'dap-cpptools)
(require 'dap-gdb-lldb)

;; php
(require 'dap-php)

(provide 'init-dev)
