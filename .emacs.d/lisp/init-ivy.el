(use-package ivy
  :ensure t
  :diminish ivy-mode
  :hook (after-init . ivy-mode))

(use-package counsel
  :diminish ivy-mode counsel-mode
  :init
   ;; here is ok
  ;; (counsel-mode)
  :bind (("C-s" . swiper-isearch)
         :map ivy-minibuffer-map
         ("RET" . ivy-alt-done)
         ("C-j" . ivy-immediate-done))
  :config
  ;; and here is not
  (counsel-mode))

(use-package ivy-prescient
  :hook (ivy-mode . ivy-prescient-mode))

(use-package ivy-rich
  :config
  (ivy-rich-modify-column 'counsel-M-x
                        'counsel-M-x-transformer
                        '(:width 0.2))
  :hook
  (ivy-posframe-mode . ivy-rich-mode))


(use-package ivy-posframe
  :custom-face
  (ivy-posframe-border ((t (:background "#aaaaaa"))))
  :config
  (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center))
        ivy-posframe-height-alist '((t . 20))
        ivy-posframe-parameters '(
                                  (internal-border-width . 1)
                                  (left-fringe . 8)
                                  (right-fringe . 8)))
  (setq ivy-posframe-font "JetBrains Mono 20")
  (setq ivy-posframe-width 100
        ivy-posframe-height 20)
  (ivy-posframe-mode 1))

(provide 'init-ivy)
