
((digest . "0201ed17a2341419251f3d95ea2363c1") (undo-list nil ("(add-to-list 'custom-theme-load-path \"~/.emacs.d/themes/emacs-color-theme-solarized\")
(load-theme 'solarized-dark t) ;; または　(load-theme 'solarized-light t)


" . -1567) (t 21491 31199 326127 261000) nil (1722 . 1723) nil (1713 . 1722) nil (1693 . 1713) nil (1673 . 1693) nil (1653 . 1673) nil (1652 . 1653) nil (1647 . 1652) nil (1627 . 1647) nil (1607 . 1627) nil (1587 . 1607) nil (1567 . 1587) (t 21491 30601 442134 807000) nil (1521 . 1524) (1442 . 1445) (1403 . 1406) (1380 . 1383) (1343 . 1346) (1320 . 1323) (1273 . 1276) (1235 . 1238) (1185 . 1188) (1133 . 1136) (t 21491 29772 662145 267000) nil (1534 . 1535) nil (1514 . 1534) nil (1494 . 1514) nil (1493 . 1494) nil (1478 . 1493) nil (1458 . 1478) nil (1438 . 1458) nil (1418 . 1438) nil (1416 . 1418) nil (1402 . 1416) nil (1382 . 1402) nil (1381 . 1382) nil (1362 . 1381) nil (1360 . 1362) nil (1348 . 1360) nil (1328 . 1348) nil (1327 . 1328) nil (1308 . 1327) nil (1306 . 1308) nil (1304 . 1306) nil (1284 . 1304) nil (1264 . 1284) nil (1263 . 1264) nil (1249 . 1263) nil (1229 . 1249) nil (1227 . 1229) nil (1222 . 1227) nil (1202 . 1222) nil (1182 . 1202) nil (1181 . 1182) nil (1173 . 1181) nil (1153 . 1173) nil (1133 . 1153) nil (1098 . 1101) (1092 . 1095) nil (1126 . 1127) (1126 . 1127) (1126 . 1127) (1126 . 1127) (1126 . 1127) nil (1079 . 1082) (1010 . 1013) (984 . 987) (910 . 913) (887 . 890) (808 . 811) (784 . 787) (770 . 773) (749 . 752) (737 . 740) (668 . 671) (633 . 636) (574 . 577) (523 . 526) (468 . 471) (402 . 405) (382 . 385) (356 . 359) (314 . 317) (278 . 281) (247 . 250) (234 . 237) (224 . 227) (189 . 192) (160 . 163) (137 . 140) (96 . 99) (68 . 71) (45 . 48) (21 . 24) (1 . 4) (t 21491 29675 814146 489000) nil ("
" . 999) nil ("(auto-install-compatibility-setup)
" . 999) nil ("(auto-install-update-emacswiki-package-name t)
" . 999) nil ("(require 'auto-install)
" . 999) nil ("(add-to-list 'load-path (expand-file-name \"~/.emacs.d/auto-install/\"))
" . 999) nil (";;
" . 999) nil ("
" . 999) nil ("(setq-default tab-width 8)
" . 999) nil (";; (setq-default indent-tabs-mode nil)
" . 999) nil (";; デフォルトのタブ
" . 999) nil ("
" . 999) nil ("(setq uniqufy-buffer-name-style 'post-forward-angle-brackets)
" . 999) nil ("(require 'uniquify)
" . 999) nil (";; ファイル名が重複していたらディレクトリ名を追加する
" . 999) nil ("
" . 999) nil ("(define-key dired-mode-map \"r\" 'wdired-change-to-wdired-mode)
" . 999) nil ("(require 'wdired)
" . 999) nil (";; diredから\"r\"でファイル名インライン編集する
" . 999) nil ("
" . 999) nil ("(require 'dired-x)
" . 999) nil (";; diredを便利にする
" . 999) nil ("
" . 999) nil ("(setq diff-switches '(\"-u\" \"-p\" \"-N\"))
" . 999) nil (";; diffのオプション
" . 999) nil ("
" . 999) nil ("(setq ediff-window-setup-function 'ediff-setup-windows-plain)
" . 999) nil (";; ediffを1ウィンドウで実行
" . 999) nil ("
" . 999) nil ("(setq recentf-max-saved-items 10000)
" . 999) nil (";; 最近開いたファイルを保存する数
" . 999) nil ("
" . 999) nil ("(savehist-mode 1)
" . 999) nil (";; ミニバッファの履歴を保存する
" . 999) nil ("
" . 999) nil ("(setq history-length 10000)
" . 999) nil (";; 履歴数
" . 999) nil ("
" . 999) nil ("(icomplete-mode 1)
" . 999) nil (";; 補完可能なものを随時表示
" . 999) nil ("
" . 999) nil ("(setq read-file-name-completion-ignore-case t)
" . 999) nil ("(setq completion-ignore-case t)
" . 999) nil (";; 補完
" . 999) nil ("
" . 999) nil ("(setq auto-save-interval 60)
" . 999) nil ("(setq auto-save-timeout 15)
" . 999) nil (";; settings for time of auto-save by hideyuki
" . 999) nil ("
" . 999) nil ("(setq next-line-add-newlines nil)
" . 999) nil (";; バッファの最後でnewlineで新規行を追加するのを禁止する
" . 999) nil ("
" . 999) nil ("(setq require-final-newline t)
" . 999) nil (";; 最終行に必ず一行挿入する
" . 999) nil ("
" . 999) nil ("(setq kill-whole-line t)
" . 999) nil (";; 行の先頭をC-kを一回押すだけで行全体を表示する
" . 999) nil ("
" . 674) nil ("(add-to-list 'default-frame-alist '(alpha . 50))
" . 674) nil (";;alpha
" . 674) nil ("
" . 1) nil ("(setq-default show-trailing-whitespace t)
" . 1) nil (";; 行末の空白を表示　
" . 1) nil undo-tree-canary))
