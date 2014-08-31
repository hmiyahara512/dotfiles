;;; 基本キーバインド
(define-key global-map (kbd "C-h") 'delete-backward-char) ; 削除
(define-key global-map (kbd "M-?") 'help-for-help) ; ヘルプ

;;(define-key global-map (kbd "C-z") 'undo) ; undo
(define-key global-map (kbd "C-c i") 'indent-region) ; インデント
(define-key global-map (kbd "C-c C-i") 'hippie-expand) ; 補完
(define-key global-map (kbd "C-c ;") 'comment-dwim) ; コメントアウト

;;; window move by hideyuki
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)







