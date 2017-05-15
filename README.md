# To Reproduce

```shell
$ nvim -u vimrc 0.go
```

Then in normal mode run the following commands:

- `5gg` -- go to line 5
- `J`   -- join it with the next line
- `jVj` -- move down and select the next two lines
- `]e`  -- move the selection down a line
- `]e`  -- move the current line down a line
- `ce`  -- correct until end of word
