(el-get-bundle 'irony)
(el-get-bundle 'company)
(el-get-bundle 'company-irony)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(with-eval-after-load "irony"
     (custom-set-variables '(irony-additional-clang-options '("-std=c++1z")))
     (add-to-list 'company-backends 'company-irony)
     (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
     (add-hook 'c-mode-common-hook 'irony-mode))

(add-hook 'c++-mode-hook 'flycheck-mode)
(setq flycheck-clang-args '("-std=c++1z"))
(flycheck-define-checker c/c++
  "A C/C++ checker using clang++."
  :command ("clang++" "-Wall" "-Wextra" source)
  :error-patterns  ((error line-start
                           (file-name) ":" line ":" column ":" "error: " (message)
                           line-end)
                    (warning line-start
                             (file-name) ":" line ":" column ":" "warning: " (message)
                             line-end))
  :modes (c-mode c++-mode))

(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))

(add-hook 'c++-mode-hook
          '(lambda()
             (gtags-mode 1)))


(el-get-bundle clang-format)
(global-set-key [C-M-tab] 'clang-format-region)
