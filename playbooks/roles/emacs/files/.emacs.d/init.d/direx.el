(el-get-bundle direx)
(require 'direx)
(global-set-key (kbd "C-x C-j") 'direx:find-directory)
(global-set-key (kbd "C-x C-d") 'direx:jump-to-directory)

(el-get-bundle popwin)
(require 'popwin)
(popwin-mode t)
(push '(direx:direx-mode :position left :width 25 :dedicated t)
      popwin:special-display-config)
