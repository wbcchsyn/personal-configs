(prefer-coding-system 'utf-8-unix)
(setq require-final-newline t)
;(define-key global-map "\C-x\C-j" 'toggle-input-method)

(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

(require 'mozc)
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'echo-area)
