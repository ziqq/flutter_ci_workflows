# GitHub Actions


## Description
Repository for storing shared workflow.


### Docs
[https://docs.github.com/en/actions/using-workflows/reusing-workflows](https://docs.github.com/en/actions/using-workflows/reusing-workflows)


## Example
```yml
## testing.yml usage

jobs:
 tests:
   uses: ziqq/flutter_ci_workflows/.github/workflows/testing.yml@main
   secrets:
     CODECOV_TOKEN: ${{ secrets.CODECOV_TOKEN }} # Token is required
```