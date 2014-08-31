;; highlight the current line
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background "gray10"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
;; (setq hl-line-face 'underline) ; 下線
(global-hl-line-mode)

;; 現在行を目立たせる　
;; (defface hlline-face
;;   '((((class color)
;;       (background dark))
;;      (:background "dark slate gray"))
;;     (((class color)
;;       (background light))
;;      (:background "color-234"))
;;     (t
;;      ()))
;;   "*Face used by hl-line.")
;; (setq hl-line-face 'hlline-face)
;; ;; (setq hl-line-face 'underline) ; 下線
;; (global-hl-line-mode)

;; ;; ;; 現在行を目立たせる　
;; ;; ;; highlight the current line; set a custom face, so we can
;; ;; ;; recognize from the normal marking (selection)
;; ;; (defface hl-line '((t (:background "Gray")))
;; ;;   "Face to use for `hl-line-face'." :group 'hl-line)
;; ;; (setq hl-line-face 'hl-line)
;; ;; (global-hl-line-mode t) ; turn it on for all modes by default

;; ;;Window
;; (if window-system
;;     (progn
;;       ;; 文字の色を設定します。
;;       (add-to-list 'default-frame-alist '(foreground-color . "VioletRed1"))
;;       ;; 背景色を設定します。
;;       (add-to-list 'default-frame-alist '(background-color . "black"))
;;       ;; カーソルの色を設定します。
;;       (add-to-list 'default-frame-alist '(cursor-color . "snow"))
;;       ))

;; ;;
;; (load-theme 'solarized-dark t)

;; ;; make the fringe stand out from the background
;; (setq solarized-distinct-fringe-background t)

;; ;; make the modeline high contrast
;; (setq solarized-high-contrast-mode-line t)

;; ;; Use less bolding
;; (setq solarized-use-less-bold t)

;; ;; Use more italics
;; (setq solarized-use-more-italic t)

;; ;; Use less colors for indicators such as git:gutter, flycheck and similar.
;; (setq solarized-emphasize-indicators nil)


