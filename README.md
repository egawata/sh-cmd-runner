# sh-cmd-runner - Vim plugin

This vim plugin helps running a command in shell, and displays its result.

## How to use

- Enter into visual mode.
- Select a text which includes a command. (ex. `grep -nr foo .`)
- Press `Shift` + `R`.
- You will see a new buffer with the command and its result.

## Options

### g:sh_cmd_runner_run_cmd_key

Change a key to run. Default is `<S-r>`.

### g:sh_cmd_runner_cmd_prefix

Set a prefix of command line. Default is empty.

With `g:sh_cmd_runner_cmd_prefix` is `$ `:

```
$ curl 'http://example.com' -D -
```

### g:sh_cmd_runner_result_separator

Set a separator used around a result. Default is empty.

With `g:sh_cmd_runner_result_separator` is `---`:

```
curl 'http://example.com` -D -

---
HTTP/2 200
date: Sat, 16 Nov 2019 14:58:06 GMT

(more lines...)

---
```

## License

Copyright (c) egawata. Distributed under the same terms as Vim itself.
