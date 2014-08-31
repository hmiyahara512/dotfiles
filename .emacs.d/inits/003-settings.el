;; linum by hideyuki
(global-linum-mode t)
(setq linum-format "%4d ")
;;(setq linum-format "%4d| ")

;; remember cursor place by hideyuki
(load "saveplace")
(setq-default save-place t)

;; メニューバーを消す
(menu-bar-mode -1)

;; ツールバーを消す
(tool-bar-mode -1)

;;; カーソルの点滅をとめる
(blink-cursor-mode 0)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; 行末の空白を表示　
(setq-default show-trailing-whitespace t)

;;alpha
(add-to-list 'default-frame-alist '(alpha . 50))

;; ;;
;; (setq kill-whole-line t)

;; 最終行に必ず一行挿入する
(setq require-final-newline t)

;; バッファの最後でnewlineで新規行を追加するのを禁止する
(setq next-line-add-newlines nil)

;; settings for time of auto-save by hideyuki
(setq auto-save-timeout 15)
(setq auto-save-interval 60)

;; 補完
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; 補完可能なものを随時表示
(icomplete-mode 1)

;; 履歴数
(setq history-length 10000)

;; ミニバッファの履歴を保存する
(savehist-mode 1)

;; 最近開いたファイルを保存する数
(setq recentf-max-saved-items 10000)

;; ediffを1ウィンドウで実行
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; diffのオプション
(setq diff-switches '("-u" "-p" "-N"))

;; diredを便利にする
(require 'dired-x)

;; diredから"r"でファイル名インライン編集する
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

;; ファイル名が重複していたらディレクトリ名を追加する
(require 'uniquify)
(setq uniqufy-buffer-name-style 'post-forward-angle-brackets)

;; デフォルトのタブ
;; (setq-default indent-tabs-mode nil)
(setq-default tab-width 8)

;;
(add-to-list 'load-path (expand-file-name "~/.emacs.d/auto-install/"))
(require 'auto-install)
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)


