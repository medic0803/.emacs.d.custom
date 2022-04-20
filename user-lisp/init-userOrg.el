;; ;; set org-mode word-wrap
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; org-mode code block
(require 'org-tempo)

;; (setq org-image-actual-width 50)
(setq org-image-actual-width nil)

;; Prettify UI
(use-package org-bullets
  :ensure t
  :if (char-displayable-p ?⚫)
  :hook (org-mode . org-bullets-mode)
  :init
  (setq org-todo-keyword-faces '(("TODO" . (:foreground "white" :background "#95A5A6"   :weight bold))
                                 ("HAND" . (:foreground "white" :background "#2E8B57"  :weight bold))
                                 ("DONE" . (:foreground "white" :background "#3498DB" :weight bold))))
  )

;; make notes capture faster
(setq org-capture-templates
      '(("b" "购书清单" entry (file+headline "~/OrgNotes/OrgCapture/BooksReading.org" "购书清单")
         "** 《%?》\n*** 豆瓣评分: \n\n*** Author: \n\n*** 来源: \n\n*** Reason: \n\n%U"
         :empty-lines 1)
        ("s" "购物清单" entry (file+headline "~/OrgNotes/OrgCapture/ShoppingList.org" "Shopping List")
         "** Item:%? \n*** Purchase Reason \n\n*** Current Price:\n\n%U"
         :empty-lines 1)
        ("d" "备忘录" entry (file+headline "/Users/anthony/OrgNotes/AUT_Sem_1_2020_Day_Plan.org" "TODO Clear Inbox")
         "**** %? \n\n%U"
         :empty-lines 1)
        )
      )

(setq-default flyspell-mode t)

;;display inline imagesautomatically
(setq org-startup-with-inline-images t)


;; (defun langtool-autoshow-detail-popup (overlays)
;;   (when (require 'popup nil t)
;;     ;; Do not interrupt current popup
;;     (unless (or popup-instances
;;                 ;; suppress popup after type `C-g` .
;;                 (memq last-command '(keyboard-quit)))
;;       (let ((msg (langtool-details-error-message overlays)))
;;         (popup-tip msg)))))
;; (setq langtool-autoshow-message-function
;;       'langtool-autoshow-detail-popup)

;;Config undo-fu
(global-undo-tree-mode -1)
(define-key evil-normal-state-map "u" 'undo-fu-only-undo)
(define-key evil-normal-state-map "\C-r" 'undo-fu-only-redo)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z")   'undo-fu-only-undo)
(global-set-key (kbd "C-S-z") 'undo-fu-only-redo)


;;font
;; Setting English Font
(if (string= system-type "darwin")
    (progn
      ;; (set-face-attribute 'default nil :font "SF Mono 13")
      ;; Chinese Font
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
        (set-fontset-font (frame-parameter nil 'font)
                          charset
                          (font-spec :family "STSong" :size 13)))

      ))

;; diable company
;; (add-hook 'org-mode-hook (lambda () (company-mode -1)))
(setq company-global-modes '(not org-mode))

;; customise org-superstart-bullets-list
;; https://en.wikipedia.org/wiki/Dingbat#Unicode
(use-package org-superstar
  :if (and (display-graphic-p) (char-displayable-p ?*))
  :hook (org-mode . org-superstar-mode)
  :init (setq org-superstar-headline-bullets-list '("☰" "☷" "❀" "❦" "☯" "☭")))


;; org-download
(use-package org-download
  :ensure t
  :init
  (require 'org-download)
  :config
  (setq-default org-download-image-dir "~/Documents/OrgNotes/OrgImages")
  :hook
  (dired-mode-hook . org-download-enable)
  )

(use-package super-save
  :ensure t
  :init
  (require 'super-save)
  :config
  (super-save-mode +1)
  (setq super-save-auto-save-when-idle t)
  (setq auto-save-default nil)
  (setq super-save-exclude '(".gpg"))
  )

(require 'aggressive-indent)
(add-hook 'org-mode-hook #'aggressive-indent-mode)

(provide 'init-userOrg)
