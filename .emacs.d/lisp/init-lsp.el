(use-package lsp-mode
  :init (setq lsp-keymap-prefix "C-c l"
              lsp-headerline-breadcrumb-enable nil)
  :hook (web-mode . lsp)
  :commands (
    lsp
    lsp-deferred
    lsp-install-server
    )
  :custom
  (lsp-clients-typescript-server-args '("--stdio" "--tsserver-log-file" "/Users/evolify/dev/log/ts-ls")))

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

(provide 'init-lsp)
