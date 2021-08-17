(eval-when-compile
  (require 'init-custom))

;;;;;;;;;;;;;;;;;;; thisfile contains all-packges from lazycat, see details in https://github.com/manateelazycat


;; third-party packages may have to use require in :init
(use-package snails
  :load-path "~/.emacs.d.custom/other-packages/snails"
  :init
  (require 'snails)
  (add-hook 'snails-mode-hook (lambda () (evil-insert-state)))
  )

(use-package auto-save
  :load-path "~/.emacs.d.custom/other-packages/auto-save"
  :init
  (require 'auto-save)
  :config
  (auto-save-enable)
  (setq auto-save-silent t)   ; quietly save
  (setq auto-save-delete-trailing-whitespace t)  ; automatically delete spaces at the end of the line when saving

  )

(use-package awesome-tab
  :load-path "~/.emacs.d.custom/other-packages/awesome-tab"
  :init
  (require 'awesome-tab)
  :config
  (awesome-tab-mode t)
  :bind(
        ;; ("Q". awesome-fast-switch/body)
        ("s-1" . awesome-tab-select-beg-tab)
        ("s-2" . awesome-tab-select-visible-tab)
        ("s-3" . awesome-tab-select-visible-tab)
        ("s-4" . awesome-tab-select-visible-tab)
        ("s-5" . awesome-tab-select-visible-tab)
        ("s-6" . awesome-tab-select-visible-tab)
        ("s-7" . awesome-tab-select-visible-tab)
        ("s-8" . awesome-tab-select-visible-tab)
        ("s-9" . awesome-tab-select-end-tab)
        ("s-j" . awesome-tab-backward-tab)
        ("s-k" . awesome-tab-forward-tab)
        ("s-," . awesome-tab-forward-group)
        ("s-." . awesome-tab-backward-group)
        ("s-w" . kill-current-buffer)
        )
  )

;; (use-package nox
;;   :load-path "~/.emacs.d.custom/other-packages/nox"
;;   :init(require 'nox)
;;   :config
;;   (dolist (hook (list
;;                  'js-mode-hook
;;                  'rust-mode-hook
;;                  'python-mode-hook
;;                  'ruby-mode-hook
;;                  'java-mode-hook
;;                  'sh-mode-hook
;;                  'php-mode-hook
;;                  'c-mode-common-hook
;;                  'c-mode-hook
;;                  'csharp-mode-hook
;;                  'c++-mode-hook
;;                  'haskell-mode-hook
;;                  ))
;;     (add-hook hook '(lambda () (nox-ensure))))
;;   )


;; (defhydra awesome-fast-switch (:hint nil)
;;   "
;;  ^^^^Fast Move             ^^^^Tab                    ^^Search            ^^Misc
;; -^^^^--------------------+-^^^^---------------------+-^^----------------+-^^---------------------------
;;    ^_k_^   prev group    | _C-a_^^     select first | _b_ search buffer | _C-k_   kill buffer
;;  _h_   _l_  switch tab   | _C-e_^^     select last  | _g_ search group  | _C-S-k_ kill others in group
;;    ^_j_^   next group    | _C-j_^^     ace jump     | ^^                | ^^
;;  ^^0 ~ 9^^ select window | _C-h_/_C-l_ move current | ^^                | ^^
;; -^^^^--------------------+-^^^^---------------------+-^^----------------+-^^---------------------------
;; "
;;   ("h" awesome-tab-backward-tab)
;;   ("j" awesome-tab-forward-group)
;;   ("k" awesome-tab-backward-group)
;;   ("l" awesome-tab-forward-tab)
;;   ("0" my-select-window)
;;   ("1" my-select-window)
;;   ("2" my-select-window)
;;   ("3" my-select-window)
;;   ("4" my-select-window)
;;   ("5" my-select-window)
;;   ("6" my-select-window)
;;   ("7" my-select-window)
;;   ("8" my-select-window)
;;   ("9" my-select-window)
;;   ("C-a" awesome-tab-select-beg-tab)
;;   ("C-e" awesome-tab-select-end-tab)
;;   ("C-j" awesome-tab-ace-jump)
;;   ("C-h" awesome-tab-move-current-tab-to-left)
;;   ("C-l" awesome-tab-move-current-tab-to-right)
;;   ("b" ivy-switch-buffer)
;;   ("g" awesome-tab-counsel-switch-group)
;;   ("C-k" kill-current-buffer)
;;   ("C-S-k" awesome-tab-kill-other-buffers-in-current-group)
;;   ("q" nil "quit"))




(provide 'init-lazyCat)
