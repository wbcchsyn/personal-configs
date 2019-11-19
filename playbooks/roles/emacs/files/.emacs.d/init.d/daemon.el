(when window-system
  (require 'server)
  (unless (server-running-p)
    (server-start))
  )
