(el-get-bundle rust-mode)
(el-get-bundle flycheck)
(el-get-bundle flycheck-rust)
(el-get-bundle company)

(add-hook 'rust-mode-hook 'flycheck-mode)
(add-to-list 'auto-mode-alist '("\\.rs$" . rust-mode))

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") 'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(add-hook 'rust-mode-hook
          (lambda () (add-hook 'before-save-hook 'rust-format-buffer nil 'local)))
