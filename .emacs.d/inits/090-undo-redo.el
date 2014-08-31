;; undo-tree by hideyuki
(require 'undo-tree)
(global-undo-tree-mode)
(global-set-key (kbd "M-/") 'undo-tree-redo)
;;(setq split-height-threshold 0)

;; undohist by hideyuki
(require 'undohist)
(undohist-initialize)

;; redo+ by hideyuki
(require 'redo+)
(global-set-key (kbd "C-M-/") 'redo)
(setq undo-no-redo t)
(setq undo-limit 60000)
(setq undo-strong-limit 600000)

;; point-undo by hideyuki
(require 'point-undo)
(define-key global-map (kbd "<f7>") 'point-undo)
(define-key global-map (kbd "S-<f7>") 'point-redo)






