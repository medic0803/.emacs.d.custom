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

;; (use-package auto-save
;;   :load-path "~/.emacs.d.custom/other-packages/auto-save"
;;   :init
;;   (require 'auto-save)
;;   :config
;;   (auto-save-enable)
;;   ;; (setq auto-save-silent t)   ; quietly save
;;   ;; (setq auto-save-delete-trailing-whitespace t)  ; automatically delete spaces at the end of the line when saving

;; ;;; custom predicates if you don't want auto save.
;; ;;; disable auto save mode when current filetype is an gpg file.
;;   (setq auto-save-disable-predicates
;;         '((lambda ()
;;             (string-suffix-p
;;              "gpg"
;;              (file-name-extension (buffer-name)) t))))
;;   )

(remove-hook 'before-save-hook 'delete-trailing-whitespace t)
(remove-hook 'before-save-hook 'aggressive-indent--process-changed-list-and-indent t)

(setq delete-trailing-lines nil)
(add-hook 'before-save-hook (lambda () (aggressive-indent-mode nil)))
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace nil)))

;; (use-package awesome-tab
;;   :load-path "~/.emacs.d.custom/other-packages/awesome-tab"
;;   :init
;;   (require 'awesome-tab)
;;   :config
;;   (awesome-tab-mode t)
;;   :bind(
;;         ;; ("Q". awesome-fast-switch/body)
;;         ("s-1" . awesome-tab-select-beg-tab)
;;         ("s-2" . awesome-tab-select-visible-tab)
;;         ("s-3" . awesome-tab-select-visible-tab)
;;         ("s-4" . awesome-tab-select-visible-tab)
;;         ("s-5" . awesome-tab-select-visible-tab)
;;         ("s-6" . awesome-tab-select-visible-tab)
;;         ("s-7" . awesome-tab-select-visible-tab)
;;         ("s-8" . awesome-tab-select-visible-tab)
;;         ("s-9" . awesome-tab-select-end-tab)
;;         ("s-j" . awesome-tab-backward-tab)
;;         ("s-k" . awesome-tab-forward-tab)
;;         ("s-," . awesome-tab-forward-group)
;;         ("s-." . awesome-tab-backward-group)
;;         ("s-w" . kill-current-buffer)
;;         )
;;   )

;;;;
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d.custom/other-packages/cache-path-from-shell"))
;;(require 'cache-path-from-shell)

(provide 'init-lazyCat)
