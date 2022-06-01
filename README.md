# macbook-setup

Sets up a new macbook with software. I have used this on an M1 Mac without any issues.

There are two suites that are installed. 

## Pre-requisites

Install `brew`:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Core

Tools which are used for productivity or work related tasks.

## Opt

Tools which are used for my own personal workflows and daily tasks.

# Usage

To install the full suite, simply run:

```zsh
make all my-user-name
```

Otherwise, you can install things separately with:

```zsh
make core # installs core tools
make opt # installs optional tools
```
