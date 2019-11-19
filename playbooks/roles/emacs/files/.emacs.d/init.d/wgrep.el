(el-get-bundle wgrep)

;; Go to edit mode by 'e'
(setf wgrep-enable-key "e")

;; Save buffers when exit from wgrep
(setq wgrep-auto-save-buffer t)

;; Apply changes even to readonly files.
(setq wgrep-change-readonly-file t)
