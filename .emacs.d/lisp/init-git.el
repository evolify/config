(use-package magit
  :defer t)

(use-package git-gutter)

(custom-set-variables
 '(git-gutter:update-interval 2))

; (add-to-list 'git-gutter:update-hooks 'focus-in-hook)

(use-package git-gutter-fringe)

(define-fringe-bitmap 'git-gutter-fr:added [224]
                      nil nil '(center repeated))
(define-fringe-bitmap 'git-gutter-fr:modified [224]
                      nil nil '(center repeated))
(define-fringe-bitmap 'git-gutter-fr:deleted [128 192 224 240]
                      nil nil 'bottom)

(global-git-gutter-mode +1)

(setq-default fringes-outside-margins t)

(set-face-foreground 'git-gutter-fr:modified "#ffaa66")
(set-face-foreground 'git-gutter-fr:added    "#00aa77")
(set-face-foreground 'git-gutter-fr:deleted  "#cc1100")

(use-package blamer
  :load-path "../site-lisp/blamer.el"
  :custom
  (blamer-idle-time 0.3)
  (blamer-min-offset 70)
  :custom-face
  (blamer-face ((t :foreground "#7a88cf"
                    :background nil
                    :height 140
                    :italic t)))
  :hook
  (prog-mode . blamer-mode))


(provide 'init-git)
