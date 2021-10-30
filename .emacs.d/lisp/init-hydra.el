(use-package major-mode-hydra
  :ensure t
  :bind
  ("M-k" . major-mode-hydra))

(setq major-mode-hydra-invisible-quit-key "<escape>"
      major-mode-hydra-separator "-")
(major-mode-hydra-define prog-mode (:foreign-keys warn)
  ("Actions"
   (("TAB" other-window "switch")
    ("h" windmove-left "←")
    ("j" windmove-down "↓")
    ("k" windmove-up "↑")
    ("l" windmove-right "→")
    ("x" ace-delete-window "delete")
    ("m" ace-delete-other-windows "maximize")
    ("s" ace-swap-window "swap")
    ("a" ace-select-window "select"))

   "Resize"
   (("H" move-border-left "←")
    ("J" move-border-down "↓")
    ("K" move-border-up "↑")
    ("L" move-border-right "→")
    ("n" balance-windows "balance")
    ("f" toggle-frame-fullscreen "toggle fullscreen"))

   "Split"
   (("r" split-window-right "horizontally")
    ("R" split-window-horizontally-instead "horizontally instead")
    ("v" split-window-below "vertically")
    ("V" split-window-vertically-instead "vertically instead"))

   "Zoom"
   (("+" zoom-in "in")
    ("=" zoom-in)
    ("-" zoom-out "out")
    ("0" jp-zoom-default "reset"))))

(use-package pretty-hydra
  :bind
  ("M-w" . window-action/body))

(pretty-hydra-define window-action (:foreign-keys warn :quit-key "<escape>")
  ("Actions"
   (("TAB" other-window "switch")
    ("x" ace-delete-window "delete")
    ("m" ace-delete-other-windows "maximize")
    ("s" ace-swap-window "swap")
    ("a" ace-select-window "select"))

   "Resize"
   (("h" move-border-left "←")
    ("j" move-border-down "↓")
    ("k" move-border-up "↑")
    ("l" move-border-right "→")
    ("n" balance-windows "balance")
    ("f" toggle-frame-fullscreen "toggle fullscreen"))

   "Split"
   (("b" split-window-right "horizontally")
    ("B" split-window-horizontally-instead "horizontally instead")
    ("v" split-window-below "vertically")
    ("V" split-window-vertically-instead "vertically instead"))

   "Zoom"
   (("+" zoom-in "in")
    ("=" zoom-in)
    ("-" zoom-out "out")
    ("0" jp-zoom-default "reset"))))


; (use-package hydra-posframe
;   :load-path "../site-lisp/hydra-posframe.el"
;   :config
;   (setq hydra-posframe-poshandler 'posframe-poshandler-frame-bottom-center)
;   :hook (after-init . hydra-posframe-enable))

(provide 'init-hydra)
