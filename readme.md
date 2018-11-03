# switch-to-previous-buffer-mode [![Build Status](https://travis-ci.org/EricCrosson/switch-to-previous-buffer-mode.svg?branch=master)](https://travis-ci.org/EricCrosson/switch-to-previous-buffer-mode)

> Alt-Tab for Buffers

## Install

With [Quelpa](https://framagit.org/steckerhalter/quelpa)

``` {.sourceCode .lisp}
  (use-package switch-to-previous-buffer-mode
    :after (evil-leader)
    :quelpa (switch-to-previous-buffer-mode
             :fetcher github
             :repo "EricCrosson/switch-to-previous-buffer-mode")
    :config
    (defun user-switch-to-previous-buffer-mode-hook ()
      "Personal hook to bind/unbind keys for `switch-to-previous-buffer-mode'."
      (if switch-to-previous-buffer-mode
          (evil-leader/set-key "C-i" 'switch-to-previous-buffer)  ; binds to SPC Tab
        (evil-leader/set-key "C-i" nil)))                         ; un-binds SPC Tab
    (add-hook 'switch-to-previous-buffer-mode-hook 'esc-switch-to-previous-buffer-mode-hook)
    (switch-to-previous-buffer-mode 1))
```

> Note: this project is not destined for [MELPA](https://melpa.org/)

Or manually, after downloading into your `load-path`

``` {.sourceCode .lisp}
(require 'switch-to-previous-buffer-mode)
;; recommended: bind to key
```

## Acknowledgements

This package is a modular implementation of a
[Prelude feature](http://emacsredux.com/blog/2013/04/28/switch-to-previous-buffer/).

## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
