(el-get-bundle company)
(global-company-mode)

(setq company-minimum-prefix-length 2)
(define-key company-active-map (kbd "C-h") nil)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
