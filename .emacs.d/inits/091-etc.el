;; wgrep by hideyuki
(require 'wgrep nil t)

;; ;; split windows vertically
;; (defun split-horizontally-not-vertically ()
;;   "If there's only one window (excluding any possibly active minibuffer), then
;;      split the current window horizontally."
;;   (interactive)
;;   (if (= (length (window-list nil 'dont-include-minibuffer-even-if-active)) 1)
;;       (split-window-horizontally)))
;; (add-hook 'temp-buffer-setup-hook 'split-horizontally-not-vertically)

;; paren
(setq show-paren-delay 0) ;カッコ強調表示ディレイ0
(show-paren-mode t) ;カッコ強調表示
(setq show-paren-style 'expression) ;カッコ内強調表示
(set-face-background 'show-paren-match-face nil) ;カッコ内背景強調オフ
(set-face-foreground 'show-paren-match-face nil) ;カッコ内文字強調オフ
(set-face-underline 'show-paren-match-face "yellow") ;カッコ内アンダーライン





