;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)
;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)
(package! wakatime-mode)
{{ if eq .chezmoi.hostname "klimovo" }}
(package! activity-watch-mode)
{{ end }}
;(package! org-wild-notifier)
;(package! org-alert)
(package! org-notifications)
(package! czech-holidays)
(package! chezmoi)
(package! glsl-mode)
(package! markdown-soma)
(package! impatient-mode)
;; (package! keycast)
(package! org-caldav)
(package! laas)
(package! aas)
(package! moe-theme)
;(package! outline-minor-faces)
(package! outshine)
(package! org-super-agenda)

; testing column colors in mu4e
;(package! mu4e-column-faces)
(unpin! doom-themes)
(unpin! lsp-treemacs)
(unpin! mu4e-alert)
;; (unpin! forge)

;; ;; hotfix workaround forge
;; (package! closql :pin "0a7226331ff1f96142199915c0ac7940bac4afdd")

;; testing

(package! org-timed-alerts
  :recipe (:host github :repo "k11m1/org-timed-alerts"))

;; PB138 - typescript prisma
(package! prisma-mode :recipe (:host github :repo "pimeys/emacs-prisma-mode" :branch "main"))


(package! jupyter)
(package! ein)
(package! org-clock-budget
  :recipe (:host github :repo "Fuco1/org-clock-budget" :files ("*.el"))
  )
;; :files ("*.el" "src/lisp/*.el")

(package! beacon)

;; PB138 - tailwind
(package! lsp-tailwindcss :recipe (:host github :repo "merrickluo/lsp-tailwindcss"))
(package! company-tabnine)

;; screencast keys
(package! keycast)

;; mu4e - evil mu 10 hotfix
(unpin! evil-collection)

;; pdf better links in org mode
(package! org-pdftools)
(package! org-noter-pdftools)
