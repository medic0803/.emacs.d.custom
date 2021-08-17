(eval-when-compile
  (require 'init-custom))

;; Evil
(use-package evil-leader
  :ensure t
  ;;the minor mode should be enabled in init
  :init
  (global-evil-leader-mode 1)
  :config

  ;; evil-leader-mode should be enabled before evil-mode
  (evil-leader/set-key
    "a" 'helm-ag
    "A" 'helm-do-ag

    ;; buffer
    "bb" 'switch-to-buffer

    ;; org-capture
    "cc"  'org-capture
    "ds" 'org-schedule
    "dd" 'org-deadline

    "ff" 'find-file "fr" 'counsel-recentf
    "fR" 'rename-this-file
    "FF"  'reveal-in-osx-finder
    ;; helm
    ;; "ha" 'helm-ag
    ;; "hd" 'helm-do-ag

    ;; insert
    "it" 'counsel-org-tag

    ;; langtool
    "lc" 'langtool-check
    "ld" 'langtool-check-done
    "la" 'langtool-autoshow-detail-popup

    "oc" 'arthurMao/screenCapture
    "oo" 'occur

    "qq" 'save-buffers-kill-emacs
    "qr" 'reload-init-file

    "se" 'iedit-mode
    "ss" 'org-download-screenshot ;;screnshot
    "st" 'org-toggle-inline-images
    "sp" 'insert-image-from-clipboard
    ;; snails
    ;; "ss" 'snails
    ;; "sp" 'snails-search-point
    "S" 'snails

    ;; window
    "w/" 'split-window-right
    "w-" 'split-window-below
    "wd" 'delete-window
    "wm" 'delete-other-windows
    "wq" 'delete-window
    "wh" 'evil-window-left
    "wl" 'evil-window-right
    "wk" 'evil-window-up
    "wj" 'evil-window-down

    ",p" 'org-priority
    "SPC"'counsel-M-x
    )
  )
;; to enable C-r for redo
(use-package undo-tree
  :config
  (turn-on-undo-tree-mode))
(setq-default undo-tree-mode 1)
(define-key evil-normal-state-map (kbd "C-r") 'undo-tree-redo)
(define-key evil-normal-state-map (kbd "u") 'undo-tree-undo)
(use-package evil
  :ensure t
  :init
  (evil-mode 1)
  :config
  (setcdr evil-insert-state-map nil)
  :bind(
        :map evil-normal-state-map
        ("C-e" . move-end-of-line)
        ("C-a" . move-beginning-of-line)

        ("t" . org-todo)
        ("j" . evil-next-visual-line)
        ("k" . evil-previous-visual-line)
        ("T" . org-insert-todo-heading)

        :map evil-insert-state-map
        ([escape] . evil-normal-state)
        :map evil-visual-state-map
        ("C-e" . move-end-of-line)
        ("C-a" . move-beginning-of-line)
        ("j" . evil-next-visual-line)
        ("k" . evil-previous-visual-line)
        )
  )

(use-package evil-escape
  :ensure t
  :init
  (evil-escape-mode 1)
  :config
  (setq-default evil-escape-key-sequence "jk")
  )

;;-- cofig fctix
(use-package fcitx
  :init
  (fcitx-aggressive-setup)
  :ensure t
  )

;; enable speed-command to optimize org GTD
(use-package evil-org
  :init
  (setq evil-org-key-theme '(textobjects navigation additional insert todo))
  )
(defun org-icalendar-open-ics-file (file)
  (start-process "org-icalendar-open-ics-file-process" nil "open" "-a" "/Applications/Calendar.app" file))

(add-hook 'org-icalendar-after-save-hook 'org-icalendar-open-ics-file)
(require 'dap-gdb-lldb)

(use-package evil-surround
  :ensure t
  :init
  (global-evil-surround-mode 1))

(provide 'init-evil)