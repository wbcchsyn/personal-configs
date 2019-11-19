(el-get-bundle 'flycheck)
(el-get-bundle 'go-mode)
(el-get-bundle 'go-eldoc)
(el-get-bundle 'company-go)

(add-to-list 'auto-mode-alist '("\\.go$" . go-mode))
(add-to-list 'exec-path (expand-file-name "~/.go/bin"))

(with-eval-after-load 'go-mode
     (add-to-list 'company-backends 'company-go)
     (add-hook 'go-mode-hook 'go-eldoc-setup)
     (define-key go-mode-map (kbd "M-.") 'godef-jump)
     (define-key go-mode-map (kbd "M-*") 'pop-tag-mark)
     (add-hook 'before-save-hook 'gofmt-before-save)
     (add-hook 'go-mode-hook '(lambda () (setq tab-width 2)) t))
