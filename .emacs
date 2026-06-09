(add-to-list 'exec-path "/home/linuxbrew/.linuxbrew/bin")
(setenv "PATH" (concat "/home/linuxbrew/.linuxbrew/bin:" (getenv "PATH")))
(require 'package)
(load-file "~/rc.el")
(package-initialize)
(setq package-install-upgrade-built-in t)
(setq inhibit-startup-screen t)
(add-to-list 'default-frame-alist `(font . "IosevkaNerdFont-18"))
(with-eval-after-load 'evil
  (evil-define-key 'normal 'global (kbd "SPC c m")
    (lambda () (interactive)
      (call-interactively #'compile))))
(with-eval-after-load 'evil
  (evil-define-key 'normal 'global (kbd "SPC l f") 'eglot-format))

(global-auto-revert-mode 1)
(setq evil-undo-system 'undo-redo)
(setq-default truncate-lines t)
(setq mouse-wheel-progressive-speed nil)
(setq compile-command "")
(setq make-backup-files nil)
(electric-pair-mode 1)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(ido-mode 1)
(ido-everywhere 1)
(column-number-mode 1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(rc/require-theme 'gruber-darker)
(rc/require 'company)
(global-company-mode)
(rc/require 'evil)
(rc/require 'glsl-mode)
(require 'evil)
(evil-mode 1)
(require 'eglot)
(add-hook 'c-mode-hook   #'eglot-ensure)
(add-hook 'c++-mode-hook #'eglot-ensure)
(add-hook 'rust-mode-hook #'eglot-ensure)
(add-hook 'glsl-mode-hook #'eglot-ensure)
(rc/require 'rust-mode)
(rc/require 'tree-sitter)
(rc/require 'tree-sitter-langs)
(require 'tree-sitter)
(require 'tree-sitter-langs)

(rc/require 'go-mode)

;; (use-package doom-themes
;;   :ensure t
;;   :custom
;;   ;; Global settings (defaults)
;;   (doom-themes-enable-bold t)   ; if nil, bold is universally disabled
;;   (doom-themes-enable-italic t) ; if nil, italics is universally disabled
;;   :config
;;   (load-theme 'doom-opera-light t)

;;   )

(evil-commentary-mode)

(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

(with-eval-after-load 'eglot
  (setq eglot-autoshutdown t)
  (setq eldoc-echo-area-use-multiline-p nil)
  (add-hook 'eglot-managed-mode-hook
            (lambda ()
              (eglot-inlay-hints-mode -1)))
  (add-to-list 'eglot-server-programs
               '((c-mode c++-mode) . ("clangd"
                                      "--header-insertion=never"
                                      "--completion-style=detailed"
                                      "--clang-tidy")))
  (add-to-list 'eglot-server-programs
               '(glsl-mode . ("glsl_analyzer")))

  (add-to-list 'eglot-server-programs
               '(go-mode . ("gopls"))))

(with-eval-after-load 'evil
  (evil-define-key 'normal 'global (kbd "C-n") 'dired-jump))
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "-") 'dired-up-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company dash-functional doom-themes evil-commentary glsl-mode
	     go-mode gruber-darker-theme rust-mode tree-sitter-langs)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
