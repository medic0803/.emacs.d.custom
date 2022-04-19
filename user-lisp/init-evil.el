(eval-when-compile
  (require 'init-custom))

(use-package reveal-in-osx-finder
  :ensure t
  )

;; Evil
(use-package evil-leader
  :ensure t
  ;;the minor mode should be enabled in init
  :init
  (global-evil-leader-mode 1)
  :config

  ;; evil-leader-mode should be enabled before evil-mode
  (evil-leader/set-key
    ;; helm
    "a" 'helm-ag
    "A" 'helm-do-ag

    ;; buffer
    "bb" 'switch-to-buffer

    ;; org-capture
    "cc" 'org-capture

    ;; "co" 'counsel-outline
    "ds" 'org-schedule
    ;; "dd" 'org-deadline
    "dd" 'delete-trailing-whitespace

    ;; edit-source
    ;; "ea" 'org-edit-src-abort
    "ee" 'org-edit-src-code
    ;; "ee" 'org-edit-src-exit
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

    ;; imenu
    "ml" 'imenu-list-smart-toggle
    "oc" 'arthurMao/screenCapture
    "on" 'org-next-visible-heading
    "op" 'org-previous-visible-heading
    "oo" 'occur

    ;; python
    "ps" 'run-python
    "pr" 'python-shell-send-buffer

    "qq" 'save-buffers-kill-emacs
    "qr" 'reload-init-file

    "sc" 'org-download-clipboard
    "se" 'iedit-mode
    "ss" 'org-download-screenshot ;;screnshot
    "st" 'org-toggle-inline-images
    ;; snails
    ;; "ss" 'snails
    ;; "sp" 'snails-search-point
    "S" 'shell-pop

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

;;u for undo-fu
(use-package undo-fu
  :ensure t
  )

;; to enable C-r for redo
(use-package undo-tree
  :ensure t
  :config
  (turn-on-undo-tree-mode))

(use-package evil
  :ensure t
  :init
  (evil-mode 1)
  (undo-tree-mode 1)
  :config
  (setcdr evil-insert-state-map nil)
  :bind(
        :map evil-normal-state-map
        ("C-e" . move-end-of-line)
        ("C-a" . move-beginning-of-line)
        ("C-n" . next-line)
        ("C-p" . previous-line)
        ;; ("C-r" . undo-tree-redo)
        ;; ("u"   . undo-tree-undo)

        ("t" . org-todo)
        ("j" . evil-next-visual-line)
        ("k" . evil-previous-visual-line)
        ("T" . org-insert-todo-heading)

        :map evil-insert-state-map
        ([escape] . evil-normal-state)
        :map evil-visual-state-map
        ("C-e" . move-end-of-line)
        ("C-a" . move-beginning-of-line)
        ("C-n" . next-line)
        ("C-p" . previous-line)
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

;; enable speed-command to optimize org GTD
(use-package evil-org
  :ensure t
  :init
  (setq evil-org-key-theme '(textobjects navigation additional insert todo))
  )
(defun org-icalendar-open-ics-file (file)
  (start-process "org-icalendar-open-ics-file-process" nil "open" "-a" "/Applications/Calendar.app" file))

(add-hook 'org-icalendar-after-save-hook 'org-icalendar-open-ics-file)


(use-package evil-surround
  :ensure t
  :init
  (global-evil-surround-mode 1))

;;;; https://github.com/laishulu/emacs-smart-input-source
;; (use-package sis
;;   :ensure t
;;   :init
;;   ;; For MacOS
;;   (sis-ism-lazyman-config

;;    ;; English input source may be: "ABC", "US" or another one.
;;    ;; "com.apple.keylayout.ABC"
;;    "com.apple.keylayout.US"

;;    ;; Other language input source: "rime", "sogou" or another one.
;;    ;; "im.rime.inputmethod.Squirrel.Rime"
;;    "com.apple.inputmethod.SCIM.ITABC"
;;    ;; "com.sogou.inputmethod.sogou.pinyin"

;;    ;; Please preapre system-based input source manager(ISM)
;;    ;; MacOS: macism/emacsmacport(for EMP); MS Windows: im-select; Linux: fcitx/ibus
;;    "macism")

;;   ;; :hook
;;   ;; enable the /follow context/ and /inline region/ mode for specific buffers
;;   ;; (((text-mode prog-mode) . sis-context-mode)
;;   ;;  ((text-mode prog-mode) . sis-inline-mode))

;;   :config
;;   ;; enable the /cursor color/ mode
;;   ;; (sis-global-cursor-color-mode t)
;;   ;; enable the /respect/ mode
;;   (sis-global-respect-mode t)
;;   ;; enable the /context/ mode for all buffers
;;   (sis-global-context-mode t)
;;   ;; enable the /inline english/ mode for all buffers
;;   (sis-global-inline-mode t)
;;   )

;; (global-set-key (kbd "C-c C-c") 'org-edit-src-exit)
;; (global-set-key (kbd "C-c C-k") 'org-edit-src-abort)
(provide 'init-evil)
