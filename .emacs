(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(centaur-tabs-mode t nil (centaur-tabs))
 '(centaur-tabs-set-icons t)
 '(company-quickhelp-color-background "#3E4452")
 '(company-quickhelp-color-foreground "#ABB2BF")
 '(custom-enabled-themes '(doom-one))
 '(custom-safe-themes
   '("730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "6c9cbcdfd0e373dc30197c5059f79c25c07035ff5d0cc42aa045614d3919dab4" "cae81b048b8bccb7308cdcb4a91e085b3c959401e74a0f125e7c5b173b916bf9" "a3b6a3708c6692674196266aad1cb19188a6da7b4f961e1369a68f06577afa16" "aaa4c36ce00e572784d424554dcc9641c82d1155370770e231e10c649b59a074" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "93ed23c504b202cf96ee591138b0012c295338f38046a1f3c14522d4a64d7308" "77113617a0642d74767295c4408e17da3bfd9aa80aaa2b4eeb34680f6172d71a" "6c3b5f4391572c4176908bb30eddc1718344b8eaff50e162e36f271f6de015ca" "2c49d6ac8c0bf19648c9d2eabec9b246d46cb94d83713eaae4f26b49a8183fc4" "5b809c3eae60da2af8a8cfba4e9e04b4d608cb49584cb5998f6e4a1c87c057c4" "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499" "3c2f28c6ba2ad7373ea4c43f28fcf2eed14818ec9f0659b1c97d4e89c99e091e" "01cf34eca93938925143f402c2e6141f03abb341f27d1c2dba3d50af9357ce70" "d6603a129c32b716b3d3541fc0b6bfe83d0e07f1954ee64517aa62c9405a3441" "188fed85e53a774ae62e09ec95d58bb8f54932b3fd77223101d036e3564f9206" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "fce3524887a0994f8b9b047aef9cc4cc017c5a93a5fb1f84d300391fba313743" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "0dd2666921bd4c651c7f8a724b3416e95228a13fca1aa27dc0022f4e023bf197" "b73a23e836b3122637563ad37ae8c7533121c2ac2c8f7c87b381dd7322714cd0" default))
 '(display-line-numbers 'relative)
 '(display-line-numbers-current-absolute nil)
 '(display-time-24hr-format t)
 '(doom-modeline-github t)
 '(doom-modeline-unicode-fallback t)
 '(evil-want-Y-yank-to-eol t)
 '(global-display-line-numbers-mode t)
 '(highlight-indent-guides-method 'character)
 '(mouse-autoselect-window t)
 '(package-selected-packages
   '(web-mode lsp-ui lsp-mode git-gutter doom-themes centaur-tabs doom-modeline one-themes highlight-indent-guides evil))
 '(tab-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fantasque Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 120 :width normal))))
 '(tab-bar ((t (:background "#262829" :foreground "#262829" :height 1.0 :width expanded))))
 '(tab-bar-tab ((t (:stipple "" :background "#1b1d1e" :foreground "#dddddd" :box (:line-width 10 :color "#1d1d1e") :slant italic))))
 '(tab-bar-tab-inactive ((t (:background "#262829" :foreground "#5B6268" :box nil)))))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(require 'evil)
 ;; For evil
(evil-mode 1)
 ;; For line numbers
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
;; For indent line highlighting
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

;; For the nice bottom bar
(require 'doom-modeline)
(doom-modeline-mode 1)

;; For the nice tabs
(use-package centaur-tabs
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))

(centaur-tabs-headline-match)
(setq centaur-tabs-set-bar 'left)
(setq centaur-tabs-height 32)

;; Indent with whatever is necessary
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)


;;Start the Emacs server
(server-start)

;;WEB MODE ON MAN
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.handlebars\\'" . web-mode))