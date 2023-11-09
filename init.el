;;カーソル行をスクロールの先頭に移動
(defun line-to-top-of-window ()
  "Move the line point is on to top op window."
  (interactive)
  (recenter 0))
(global-set-key "\C-ct" 'line-to-top-of-window)

;;スクロールを1行単位にする
(setq scroll-conservatively 1)

;;下位プロセスとして clisp を指定
(setq inferior-lisp-program "clisp")

;;slimeを初期化
(add-to-list 'load-path (expand-file-name "~/.emacs.d/slime"))
(require 'slime)
(slime-setup '(slime-repl slime-fancy slime-banner))

;;バックアップファイルを作らない
(setq make-backup-files nil)
(setq auto-save-default nil)

;;カッコの対応関係をハイライトする
(show-paren-mode t)

;;etc
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
