---
title: "Vim execute commands"
date: 2023-08-02T11:21:12+02:00
draft: false
---

# Executing shell commands within Vim

- Vim allows executing commands within itself.
  - `:! echo test`
    - > test

- `%` refers to the current file
  - `:!wc -w %` gives the word count of the current file

- Use `%!{command}` to take the file as input and overwrite it.

## Formatting json files
- Using `jq` to format json files.
  - `jq '.'` is the identity filter `.`. It takes the entire input and formats it.
  - `:%!jq '.'`
- Can be done anywhere in the file as `%` indicates the whole file.
