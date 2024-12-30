;; Hide splash page
(setq inhibit-startup-screen t)

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
