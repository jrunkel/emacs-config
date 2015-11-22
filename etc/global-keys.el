
(global-set-key (kbd "C-*") 'newline-above)
(global-set-key (kbd "C-+") 'newline-below)
(global-set-key (kbd "C-c y") 'duplicate-line)
(global-set-key (kbd "C-c C-w") 'delete-trailing-whitespace)

(global-set-key (kbd "C-x C-b") 'bs-show)
(global-set-key (kbd "C-x 9") 'kill-other-buffer)

(global-set-key (kbd "C-x g s") 'git-status)

(global-set-key (kbd "<insert>") 'dabbrev-expand)

(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C-c r") 'run-js-rake)

(global-set-key (kbd "C-x t") 'multi-term-next)
(global-set-key (kbd "C-x T") 'multi-term)

(global-set-key [(control shift left)]  'windmove-left)
(global-set-key [(control shift right)]  'windmove-right)
(global-set-key [(control shift up)]  'windmove-up)
(global-set-key [(control shift down)]  'windmove-down)

(defun move-line (n)
  "Move the current line up or down by N lines."
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    ;; restore point to original column in moved line
    (forward-line -1)
    (forward-char col)))

(defun move-line-up (n)
  "Move the current line up by N lines."
  (interactive "p")
  (move-line (if (null n) -1 (- n))))

(defun move-line-down (n)
  "Move the current line down by N lines."
  (interactive "p")
  (move-line (if (null n) 1 n)))

(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key (kbd "M-<up>") 'move-line-up)
