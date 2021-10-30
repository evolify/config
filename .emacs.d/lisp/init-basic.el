(setq user-full-name "evolify"
      user-mail-address "im.evolify@gmail.com")

(setq default-frame-alist'((top . 50)
                           (left . 50)
                           (width . 150)
                           (height . 45)
                           (font ."JetBrains Mono-16")))

;; 不生成备份等文件
(setq make-backup-files nil
      create-lockfiles nil
      auto-save-default nil)

; (global-display-line-numbers-mode)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(display-time-mode 1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

(setq org-directory "~/org/")

; set blur background
; (set-face-background 'default "mac:windowBackgroundColor")
; (dolist (f (face-list)) (set-face-stipple f "alpha:10%"))
; (setq face-remapping-alist (append face-remapping-alist '((default my/default-blurred))))
; (defface my/default-blurred
;    '((t :inherit 'default :stipple "alpha:10%"))
;    "Like 'default but blurred."
;    :group 'my)

(global-set-key (kbd "C-h") 'windmove-left)
(global-set-key (kbd "C-j") 'windmove-bottom)
(global-set-key (kbd "C-k") 'windmove-top)
(global-set-key (kbd "C-l") 'windmove-right)

(provide 'init-basic)
