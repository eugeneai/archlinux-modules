# archlinux-packages
My version of some Arch Linux zfs modules
# Packages for Arch Linux

Welcome to projectlet `arch-packages`.

This is a set of arch packages adapted for some special purposes.

## Hunspell for EMACS

Package `hunspell-emacs` supplies a new version of `hunspell`, it is installed in `/usr/local/bin` but uses system dictionaries.

Further installation is taken from [somewhere]. My setup for emacs (namely spacemacs) is as follows:

```lisp
; ########### HUNSPELL in EMACS ########################

;; List of dictionaries used.
(setq ispell-local-dictionary-alist
      '(("russian"
         "[АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯабвгдеёжзийклмнопрстуфхцчшщьыъэюя]"
         "[^АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯабвгдеёжзийклмнопрстуфхцчшщьыъэюя]"
         "[-]"  nil ("-d" "ru_RU") nil utf-8)
        ("english"
         "[A-Za-z]" "[^A-Za-z]"
         "[']"  nil ("-d" "en_US") nil iso-8859-1)))

;; Use hunspell instead aspell.
(setq ispell-really-aspell nil
      ispell-really-hunspell t
      ispell-dictionary "english")

(setq ispell-program-name "/usr/local/bin/hunspell")

(defun fd-switch-dictionary()
  (interactive)
  (let* ((dic ispell-current-dictionary)
         (change (if (string= dic "russian") "english" "russian")))
    (ispell-change-dictionary change)
    (message "Dictionary switched from %s to %s" dic change)
    ))

(global-set-key (kbd "<f8>")   'fd-switch-dictionary)

; ########### END HUNSPELL in EMACS ########################
```
