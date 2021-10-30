(require 'package) ;; Emacs builtin

;; set package.el repositories
(setq package-archives
'(
   ("org" . "https://orgmode.org/elpa/")
   ("gnu"   . "http://elpa.emacs-china.org/gnu/")
   ("melpa" . "http://elpa.emacs-china.org/melpa/")
))

;; initialize built-in package management
(package-initialize)

;; update packages list if we are on a new install
(unless package-archive-contents
  (package-refresh-contents))

;; a list of pkgs to programmatically install
;; ensure installed via package.el
(setq my-package-list '(use-package))

;; programmatically install/ensure installed
;; pkgs in your personal list
(dolist (package my-package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; auto install package
(setq use-package-always-ensure t)
(setq use-package-compute-statistics t)

;; now you can
;; (use-package pkgname) etc as per
;; use-package example docs

(provide 'init-package)
