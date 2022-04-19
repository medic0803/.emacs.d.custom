(eval-when-compile
  (require 'init-custom))

(use-package ox-hugo
  :ensure t
  :after ox)

(with-eval-after-load 'ox
  (require 'ox-hugo))

(defun arthurMao/screenCapture (basename)
  "Take a screenshot into a time stamped unique-named file in the
      same directory as the org-buffer/markdown-buffer and insert a link to this file."
  (interactive "sScreenshot name: ")
  (if (equal basename "")
      (setq basename (format-time-string "%Y%m%d_%H%M%S")))
  (progn
    (setq final-image-full-path (concat basename ".png"))
    (setq final-image-directory-path (read-from-minibuffer "Save to(default ~/Blog/static):"))
    (if (equal final-image-directory-path "")
        (setq final-image-absolute-path (concat "~/Blog/static/" final-image-full-path))
      (setq final-image-absolute-path (concat final-image-directory-path final-image-full-path))
      )
    (call-process-shell-command (format "screencapture -i %s" final-image-absolute-path) nil nil nil)
    (if (executable-find "convert")
        (progn
          (setq resize-command-str (format "convert %s -resize 100% %s" final-image-full-path final-image-full-path))
          (shell-command-to-string resize-command-str)))
    (zilongshanren//insert-org-or-md-img-link "~/Blog/static/" (concat basename ".png"))
    (insert "\n"))
  )

(defun zilongshanren//insert-org-or-md-img-link (prefix imagename)
  (if (equal (file-name-extension (buffer-file-name)) "org")
      (insert (format "[[%s%s]]" prefix imagename))
    (insert (format "![%s](%s%s)" imagename prefix imagename))))

;; PDF export setting
;; http://0x100.club/wiki_emacs/mac-org-mode-output-pdf.html
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2021/bin/universal-darwin/"))
(setq exec-path (append exec-path '("/usr/local/texlive/2021/bin/universal-darwin/")))

(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f" "xelatex -interaction nonstopmode %f"))

(provide 'init-blog)
