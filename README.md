# .github

This repository has the workflows that are applied at the organizational level.
It also has the base pre-commit hook configuration we want everyone to be using.
Both of these are critical for better change management.

## Pre-commit

Pre-commit hooks are critical for doing quick initial validation prior to even committing code.
This lets you quickly iterate and fix formatting issue, code issues, etc.
The configuration here has a base set of hooks that are broadly applicable across projects.

A few key ones for change management purposes are:

- secret detection -- helps prevent secrets from ever being committed to the repo on mistake
- add issue prefix -- automatically prefixes the commit with the key in the branch name

### Installation Instructions

Pre-commit hooks are added to the file [.pre-commit-config.yaml]. This uses the library: https://pre-commit.com

1. Install pre-commit

   https://pre-commit.com/#install

2. Add pre-commit configuration files

   - [.pre-commit-config.yaml]
   - [.tflint.hcl]
   - [.yamllint]
   - [.flake8]

   Note: This is only needed if installing in a different repository. Files already exist here.

3. Create baseline secrets file

  Create a baseline of potential secrets currently found in your git repository.

  ```bash
  $ detect-secrets scan > .secrets.baseline
  ```

  Note: This is only needed if installing in a different repository. Files already exist here.

4. Install the git hook scripts

  Run pre-commit install to set up the git hook scripts

  ```bash
  $ pre-commit install --hook-type prepare-commit-msg --hook-type pre-commit
  ```

  Now pre-commit will run automatically on git commit!

5. (optional) Run against all the files

  It's usually a good idea to run the hooks against all of the files when adding new hooks (usually pre-commit will only run on the changed files during git hooks)

  ```bash
  $ pre-commit run --all-files
  ```

### Skipping Validation

If you must do a commit with the hooks disabled:

    git commit . -m 'quick fix' --no-verify

For making edits in this repository, you should use [pre-commit](https://pre-commit.com/)
