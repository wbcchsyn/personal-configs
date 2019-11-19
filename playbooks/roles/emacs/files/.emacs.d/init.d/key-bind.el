(define-key global-map "\C-h" 'delete-backward-char)
(define-key global-map "\M-\C-d" 'kill-word)
(define-key global-map "\C-c\M-%" 'replace-regexp)

;; move window
(global-set-key "\M-l" 'windmove-right)
(global-set-key "\M-h" 'windmove-left)
(global-set-key "\M-j" 'windmove-down)
(global-set-key "\M-k" 'windmove-up)
