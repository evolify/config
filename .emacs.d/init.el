(defun update-load-path (&rest _)
  "Update `load-path'."
  (dolist (dir '("lisp" "site-lisp"))
    (push (expand-file-name dir user-emacs-directory) load-path)))

(update-load-path)

(require 'init-basic)
(require 'init-dashboard)
(require 'init-keymap)
(require 'init-package)
(require 'init-hydra)
(require 'init-ui)
(require 'init-evil)
(require 'init-ivy)
(require 'init-theme)
(require 'init-tree)
(require 'init-projectile)
(require 'init-lsp)
(require 'init-web)
(require 'init-git)
(require 'init-org)
(require 'init-company)

