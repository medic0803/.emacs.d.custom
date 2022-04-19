;; python

(require' dap-python)



(with-eval-after-load 'lsp-mode
  ;; enable log only for debug
  (setq lsp-log-io nil)
  )

;; (use-package lsp-pyright
;;   :ensure t
;;   :hook (python-mode . (lambda ()
;;                          (require 'lsp-pyright)
;;                          (lsp))))  ; or lsp-deferred
(require 'lsp-python-ms)
(use-package lsp-python-ms
  :ensure t
  :init (setq lsp-python-ms-auto-install-server t)
  :hook (python-mode . (lambda ()
                         (require 'lsp-python-ms)
                         (lsp))))  ; or lsp-deferred

(setq python-shell-interpreter "python3")

(if (string= system-type "darwin")
    (progn
      (setq python-shell-interpreter "~/opt/anaconda3/bin/python")
      ;;       (setq python-shell-interpreter "python3")
      ;;       (setq python-shell-exec-path nil)
      (setq-default python-shell-interpreter "~/opt/anaconda3/bin/python")
      ;;       (setq-default python-shell-interpreter "python3")
      (setq-default python-shell-exec-path "~/opt/anaconda3/bin/python")
      ;; (python-shell-interpreter "/opt/homebrew/bin/python3.9")
      ;; (setq lsp-python-ms-extra-paths "~/opt/anaconda3/bin/python")
      (setq lsp-python-ms-python-executable-cmd "~/opt/anaconda3/bin/python")
      ;; (setq lsp-python-ms-extra-paths "~/opt/anaconda3/pkgs")
      ;; (setq lsp-beancount-python-interpreter "/opt/homebrew/bin/python3.9")
      ;;       (setq lsp-beancount-python-interpreter "python3")
      ;;       (setq lsp-pyright-python-executable-cmd "/opt/homebrew/bin/python3.9")
      ;;       (setq lsp-pyright-python-executable-cmd "python3")
      ))

;; (setq python-indent-offset 4
;;       python-sort-imports-on-save t
;;       python-shell-interpreter "python3"
;;       pippel-python-command "python3"
;;       importmagic-python-interpreter "python3"
;;       flycheck-python-pylint-executable "pylint"
;;       flycheck-python-flake8-executable "flake8")
;; if you use pyton2, then you could comment the following 2 lines
;; (setq python-shell-interpreter "python2"
;;       python-shell-interpreter-args "-i")
;; c/c++
(require 'dap-lldb)
(require 'dap-cpptools)
(require 'dap-gdb-lldb)
;; php
(require 'dap-php)

;; jupyter notebook
(require 'jupyter)

(set-default 'Info-hide-note-references nil)
(provide 'init-dev)
