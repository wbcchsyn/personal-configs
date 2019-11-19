;; Hide splash page
(setq inhibit-startup-screen t)

;; highlighten spaces at the end of line.
(defface my-face-b-1 '((t (:background "cyan"))) nil)
(defface my-face-u-1 '((t (:foreground "Blue" :underline t))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-u-1 'my-face-u-1)

(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(("\t" 0 my-face-b-1 append)
     ("[ \t]+$" 0 my-face-u-1 append))))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)


;; Input feature
(setq-default indent-tabs-mode nil)
(column-number-mode 1)
(setq require-final-newline t)
(global-font-lock-mode t)
(windmove-default-keybindings)
(setq windmove-wrap-around t)
(show-paren-mode 1)


;; GUI Appearance
;; turn off toolbar
(when window-system
  (tool-bar-mode 0)
  (menu-bar-mode 0)
  (scroll-bar-mode 0))
