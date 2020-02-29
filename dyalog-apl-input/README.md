dyalog-apl-input
================

`dyalog-apl-input` is an Emacs input method that uses the default RIDE key mappings for the `en_US` locale. The \`-key (backquote) is used as the prefix for the key sequence.

It can simply be loaded with a `(require)` (assuming it is in the `load-path`) like so:

```
(push "~/.emacs.d/lisp" load-path)

(require 'dyalog-apl-input)
```

`C-h I` describes the input method.
