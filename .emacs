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
(require 'evil)
(evil-mode 1)
(require 'eglot)
(add-hook 'c-mode-hook   #'eglot-ensure)
(add-hook 'c++-mode-hook #'eglot-ensure)
(add-hook 'rust-mode-hook #'eglot-ensure)
(rc/require 'rust-mode)
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
                                      "--clang-tidy"))))
(with-eval-after-load 'evil
  (evil-define-key 'normal 'global (kbd "C-n") 'dired-jump))
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "-") 'dired-up-directory))
(custom-set-variables
 '(package-selected-packages
   '(company dash-functional evil gruber-darker-theme rust-mode)))
(custom-set-faces)
