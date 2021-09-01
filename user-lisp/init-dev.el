;; python

(setq-default python-shell-interpreter "/Users/anthony/opt/anaconda3/bin/python3")
(require' dap-python)

;; c/c++
(require 'dap-lldb)
(require 'dap-cpptools)
(require 'dap-gdb-lldb)

;; php
(require 'dap-php)

(provide 'init-dev)
