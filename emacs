(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(flyspell-delay 1)
 '(indent-tabs-mode nil)
 '(ispell-highlight-face (quote flyspell-incorrect))
 '(ispell-local-dictionary "american")
 '(scroll-bar-mode (quote left))
 '(setq show-paren-style t)
 '(show-paren-mode t)
 '(tab-width 4))

(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; tabbar
(require 'tabbar)
(tabbar-mode t)

;; package control
(require 'package)
(setq package-archives '(("gnu"          . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa"        . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("mepla-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/stable-melpa/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package scala-mode
  :interpreter
  ("scala" . scala-mode))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 129 :width normal)))))

