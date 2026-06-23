;; Package Initalizer
(package-initialize)
(setq package-install-upgrade-built-in t)

;; Basic Settings
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(setq inhibit-startup-screen t)

;; Completion for M-x
(ido-mode 1)
(ido-everywhere 1)

;; Line Number
(column-number-mode 1)
(global-display-line-numbers-mode 1)

;; Load the package manager
(load-file "~/rc.el")


;; Mason
(rc/require 'mason)
(mason-setup)

;; Eglot
(require 'eglot)
(add-hook 'prog-mode-hook #'eglot-ensure)

;; Evil
(rc/require 'evil)
(require 'evil)
(evil-mode 1)

(rc/require 'evil-commentary)
(require 'evil-commentary)
(evil-commentary-mode 1)

;; Theme
(rc/require-theme 'gruber-darker)

;; Font size
(add-to-list 'default-frame-alist `(font . "IosevkaNerdFont-18"))

;; Smex
(rc/require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Magit
(require 'seq)
(rc/require 'magit)
(setq magit-display-buffer-function
      #'magit-display-buffer-fullframe-status-v1)


;; Treesitter
(rc/require 'tree-sitter)
(rc/require 'tree-sitter-langs)
(require 'tree-sitter)
(require 'tree-sitter-langs)


(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)


;; Company
(rc/require 'company)
(global-company-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Keybinds
(with-eval-after-load 'evil
  (evil-define-key 'normal 'global (kbd "C-n") 'dired-jump))
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "-") 'dired-up-directory))
