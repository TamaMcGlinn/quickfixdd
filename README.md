# Quickfix dd

This overrides dd in the quickfix list (which is pretty much useless anyway,
since modifiable is off) to remove the current line (the current line of the
cursor, not the current quickfix item) from the quickfix list.

Note: I copied this from Amiel Martin's stackoverflow post
[here](https://stackoverflow.com/a/48817071/2144408) and then fixed the vint
warnings.
