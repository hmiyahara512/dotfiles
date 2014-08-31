;; structed-haskell-mode
(add-to-list 'load-path "/home/hideyuki/.emacs.d/elpa/structed-haskell-mode/elisp")
(require 'shm)
(add-hook 'haskell-mode-hook 'structured-haskell-mode)

