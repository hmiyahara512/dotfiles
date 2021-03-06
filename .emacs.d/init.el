;; ~/.emacs.d/site-lisp 以下全部読み込み
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")

;; load-path の追加
;; いちいち root になって、システム全体にインストールする必要のない、
;; 自分だけで使うような elisp は、自分のホームディレクトリに置いてます。
(setq load-path
      (append '("~/.emacs.d/inits/etc"
		"~/.emacs.d/site-lisp/etc"
		)
	            load-path))

;; ;;
;; (put 'upcase-region 'disabled nil)
