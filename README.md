# Patch Yaml Through Commit

A Github Action that allows patching yaml files in the other repository and commit changes.

## Example

Below is a brief example on how the action can be used:

```yaml
- name: Bump service image tag
  uses: pldin601/patch-yaml-through-commit
  with:
    git_repo_url: https://pldin601:${{ secrets.REPO_ACCESS_TOKEN }}@github.com/pldin601/some-repository
    committer_name: John Doe
    comitter_email: doe@john.com
    commit_message: Update image for foo_service to myregistry.com/foo_service#{{ github.sha }}
    yaml_file: path/to/docker-compose.yml
    patch_expression: services.foo_service.image=myregistry.com/foo_service#{{ github.sha }}
```

## Inputs

### `git_repo_url`

Git repository to connect.

### `committer_name`, `comitter_email`

Name and email on whose behalf a commit will be made.

### `commit_message`

Message for commit.

### `yaml_file`

Path to yaml file which should be patched (related to repository's root).

### `patch_expression`

Comma-separated pairs of path.to.node=value expresions to patch.

### `dry_run`

If this parameter set, no commit will be made. Just generated diff.
