(require 'autoinsert)

;; テンプレートのディレクトリ
(setq auto-insert-directory "~/.emacs.d/insert/")

;; 各ファイルによってテンプレートを切り替える
(setq auto-insert-alist
      (nconc '(
               ("\\.c$"    . ["template.c" my-template])
               ("\\.C$"    . ["template.C" my-template])
               ("\\.cc$"    . ["template.cc" my-template])
               ("\\.cpp$"  . ["template.cpp" my-template])
               ("\\.h$"    . ["template.h" my-template])
               ("\\.hpp$"  . ["template.hpp" my-template])
               ("\\.go$"    . ["template.go" my-template])
               ("\\.rb$"   . ["template.rb" my-template])
               ("\\.py$"   . ["template.py" my-template])
               ) auto-insert-alist))
(require 'cl)

;; ここが腕の見せ所
(defvar template-replacements-alists
  '(("%file%"             . (lambda () (file-name-nondirectory (buffer-file-name))))
    ("%file-without-ext%" . (lambda () (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))))
    ("%include-guard%"    . (lambda () (format "__SCHEME_%s__" (upcase (file-name-sans-extension (file-name-nondirectory buffer-file-name))))))))

(defun my-template ()
  (time-stamp)
  (mapc #'(lambda(c)
        (progn
          (goto-char (point-min))
          (replace-string (car c) (funcall (cdr c)) nil)))
    template-replacements-alists)
  (goto-char (point-max))
  (message "done."))
(add-hook 'find-file-not-found-hooks 'auto-insert)


