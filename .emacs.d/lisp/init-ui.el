; (add-to-list 'default-frame-alist
;              '(font . "JetBrains Mono-14"))
;
; (if (not (eq window-system nil))
;     (progn
;       ;; top, left ... must be integer
;       (add-to-list 'default-frame-alist
;                    (cons 'top  (/ (x-display-pixel-height) 20)))
;       (add-to-list 'default-frame-alist
;                    (cons 'left (/ (x-display-pixel-width) 20)))
;       (add-to-list 'default-frame-alist
;                    (cons 'height (/ (* 4 (x-display-pixel-height))
;                                     (* 5 (frame-char-height)))))
;       (add-to-list 'default-frame-alist
;                    (cons 'width (/ (* 4 (x-display-pixel-width))
;                                    (* 5 (frame-char-width)))))))


;; all-the-icons
(use-package all-the-icons)

;; writeroom-mode
(use-package writeroom-mode)

;; doom-modeline
(use-package doom-modeline
  :ensure t
  :init
  (setq doom-modeline-buffer-file-name-style 'file-name
	doom-modeline-vcs-max-length 20
	doom-modeline-project-detection 'projectile)
  (doom-modeline-mode 1))

(use-package centaur-tabs
  :demand
  :config
  (centaur-tabs-mode t)
  :init
  (setq centaur-tabs-plain-icons t
        centaur-tabs-height 24
        centaur-tabs-set-bar 'left
        ; x-underline-at-descent-line t
        centaur-tabs-style "bar")
  :hook
  (dashboard-mode . centaur-tabs-local-mode)
  :bind
  ("C-p" . centaur-tabs-backward)
  ("C-n" . centaur-tabs-forward))


;; Quickly switch windows
(use-package ace-window
  :pretty-hydra
  ((:title (pretty-hydra-title "Window Management" 'faicon "th" :height 1.1 :v-adjust -0.1)
    :foreign-keys warn :quit-key "q")
   ("Actions"
    (("TAB" other-window "switch")
     ("x" ace-delete-window "delete" :exit t)
     ("X" ace-delete-other-windows "delete other" :exit t)
     ("s" ace-swap-window "swap" :exit t)
     ("a" ace-select-window "select" :exit t)
     ("m" toggle-frame-maximized "maximize" :exit t)
     ("f" toggle-frame-fullscreen "fullscreen" :exit t))
    "Resize"
    (("h" shrink-window-horizontally "←")
     ("j" enlarge-window "↓")
     ("k" shrink-window "↑")
     ("l" enlarge-window-horizontally "→")
     ("n" balance-windows "balance" :exit t))
    "Split"
    (("r" split-window-right "horizontally")
     ("R" split-window-horizontally-instead "horizontally instead")
     ("v" split-window-below "vertically")
     ("V" split-window-vertically-instead "vertically instead")
     ("t" toggle-window-split "toggle"))
    "Zoom"
    (("+" text-scale-increase "in")
     ("=" text-scale-increase "in")
     ("-" text-scale-decrease "out")
     ("0" (text-scale-increase 0) "reset"))
    "Appearance"
    (("F" set-frame-font "font")
     ("T" centaur-load-theme "theme"))))
  :custom-face
  (aw-leading-char-face ((t (:inherit font-lock-keyword-face :bold t :height 2.0))))
  (aw-minibuffer-leading-char-face ((t (:inherit font-lock-keyword-face :bold t :height 1.0))))
  (aw-mode-line-face ((t (:inherit mode-line-emphasis :bold t))))
  :bind (([remap other-window] . ace-window)
         ("C-c w" . ace-window-hydra/body))
  :hook (emacs-startup . ace-window-display-mode)
  :config
  (defun toggle-window-split ()
    (interactive)
    (if (= (count-windows) 2)
        (let* ((this-win-buffer (window-buffer))
               (next-win-buffer (window-buffer (next-window)))
               (this-win-edges (window-edges (selected-window)))
               (next-win-edges (window-edges (next-window)))
               (this-win-2nd (not (and (<= (car this-win-edges)
                                           (car next-win-edges))
                                       (<= (cadr this-win-edges)
                                           (cadr next-win-edges)))))
               (splitter
                (if (= (car this-win-edges)
                       (car (window-edges (next-window))))
                    'split-window-horizontally
                  'split-window-vertically)))
          (delete-other-windows)
          (let ((first-win (selected-window)))
            (funcall splitter)
            (if this-win-2nd (other-window 1))
            (set-window-buffer (selected-window) this-win-buffer)
            (set-window-buffer (next-window) next-win-buffer)
            (select-window first-win)
            (if this-win-2nd (other-window 1))))
      (user-error "`toggle-window-split' only supports two windows")))

  ;; Bind hydra to dispatch list
  (add-to-list 'aw-dispatch-alist '(?w ace-window-hydra/body) t)

  ;; Select widnow via `M-1'...`M-9'
  (defun aw--select-window (number)
    "Slecet the specified window."
    (when (numberp number)
      (let ((found nil))
        (dolist (win (aw-window-list))
          (when (and (window-live-p win)
                     (eq number
                         (string-to-number
                          (window-parameter win 'ace-window-path))))
            (setq found t)
            (aw-switch-to-window win)))
        (unless found
          (message "No specified window: %d" number)))))
  (dotimes (n 9)
    (bind-key (format "M-%d" (1+ n))
              (lambda ()
                (interactive)
                (aw--select-window (1+ n))))))

(provide 'init-ui)
