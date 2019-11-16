# sh-cmd-runner

This plugin helps running a command in shell, and displays its result.
In default, `Shift` + `R` invokes it.

## Options

### g:sh_cmd_runner_run_cmd_key

Change a key to run.

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
