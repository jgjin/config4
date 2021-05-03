;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     auto-completion
     bm
     csv
     elixir
     elm
     emacs-lisp
     evil-snipe
     git
     (go :variables
         go-backend 'lsp)
     helm
     latex
     (lsp :variables
          lsp-headerline-breadcrumb-enable nil)
     markdown
     protobuf
     python
     rust
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom
            shell-default-shell 'eshell
            shell-default-term-shell "/bin/zsh"
            shell-enable-smart-eshell t)
     sql
     syntax-checking
     (treemacs :variables
               treemacs-use-icons-dired nil)
     typescript
     yaml
     )
   dotspacemacs-additional-packages
   '(
     all-the-icons
     drag-stuff
     evil-smartparens
     exec-path-from-shell
     zzz-to-char
     )
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  (setq-default
   dotspacemacs-check-for-update t
   dotspacemacs-editing-style 'vim
   dotspacemacs-startup-buffer-show-version t
   vim-style-visual-feedback t
   vim-style-visual-line-move-text t
   vim-style-retain-visual-state-on-shift t
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '((recents . 6)
                                (projects . 6))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-initial-scratch-message nil
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   dotspacemacs-mode-line-theme 'doom
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 6
   dotspacemacs-enable-paste-transient-state t
   dotspacemacs-which-key-delay 2
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   dotspacemacs-loading-progress-bar nil
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-undecorated-at-startup nil
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers nil
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode t
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-enable-server t
   dotspacemacs-persistent-server t
   dotspacemacs-search-tools '("rg")
   dotspacemacs-frame-title-format "%I@%S"
   dotspacemacs-icon-title-format nil
   dotspacemacs-zone-out-when-idle nil
   dotspacemacs-whitespace-cleanup t
   dotspacemacs-default-font '("SauceCodePro Nerd Font"
                               :size 16
                               :weight normal
                               :width normal)
   ))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  "Configuration function for user code.
   Called at end of Spacemacs initialization."
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)

  (global-company-mode)
  (global-hungry-delete-mode)

  (define-key evil-visual-state-map (kbd "M-h") 'drag-stuff-left)
  (define-key evil-visual-state-map (kbd "M-j") 'drag-stuff-down)
  (define-key evil-visual-state-map (kbd "M-k") 'drag-stuff-up)
  (define-key evil-visual-state-map (kbd "M-l") 'drag-stuff-right)

  (global-set-key (kbd "M-z") #'zzz-up-to-char)
  (global-set-key (kbd "C-M-z") #'zzz-to-char)
  )

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   '(exec-path-from-shell protobuf-mode helm-gtags godoctor go-gen-test go-fill-struct ggtags flycheck-golangci-lint dash-functional ivy go-mode zzz-to-char yasnippet-snippets yapfify yaml-mode xterm-color ws-butler writeroom-mode winum which-key web-beautify vterm volatile-highlights vi-tilde-fringe uuidgen use-package undo-tree treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil toml-mode toc-org tide terminal-here symon symbol-overlay string-inflection sql-indent sphinx-doc spaceline-all-the-icons smeargle shell-pop ron-mode restart-emacs rainbow-delimiters racer pytest pyenv-mode py-isort prettier-js popwin poetry pippel pipenv pip-requirements pcre2el password-generator paradox overseer org-superstar open-junk-file ob-elixir nodejs-repl nameless multi-term move-text mmm-mode markdown-toc magit-svn magit-section magit-gitflow macrostep lorem-ipsum livid-mode live-py-mode link-hint json-navigator json-mode js2-refactor js-doc indent-guide importmagic hybrid-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org helm-mode-manager helm-make helm-ls-git helm-gitignore helm-git-grep helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy forge font-lock+ flycheck-rust flycheck-pos-tip flycheck-package flycheck-elsa flycheck-elm flycheck-credo flx-ido fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-snipe evil-smartparens evil-numbers evil-nerd-commenter evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-easymotion evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emr elm-test-runner elm-mode elisp-slime-nav editorconfig dumb-jump drag-stuff dotenv-mode doom-modeline dired-quick-sort diminish devdocs define-word cython-mode csv-mode company-reftex company-math company-auctex company-anaconda column-enforce-mode clean-aindent-mode centered-cursor-mode cargo bm blacken auto-yasnippet auto-highlight-symbol auto-compile alchemist aggressive-indent ace-link ace-jump-helm-line ac-ispell)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
