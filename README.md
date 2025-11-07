# Workflows for Flutter in github actions


### Description
Repository for storing shared workflow.


### Docs
[https://docs.github.com/en/actions/using-workflows/reusing-workflows](https://docs.github.com/en/actions/using-workflows/reusing-workflows)


### Example

#### Usage testing.yml
```yml

jobs:
 tests:
   uses: ziqq/flutter_ci_workflows/.github/workflows/testing.yml@main
   secrets:
     CODECOV_TOKEN: ${{ secrets.CODECOV_TOKEN }} # Token is required
```

#### Usage checkout.yml
```yml
on:
  workflow_dispatch:
  push:
    branches:
      - "main"
    paths:
      - .github/workflows/*.yml
      - "pubspec.yaml"
      - "lib/**.dart"
      - "test/**.dart"
      - "example/**.dart"
      - "example/pubspec.yaml"
  pull_request:
    branches:
      - "main"
      - "dev"
      - "feature/**"
      - "bugfix/**"
      - "hotfix/**"
      - "support/**"
    paths:
      - .github/workflows/*.yml
      - "pubspec.yaml"
      - "lib/**.dart"
      - "test/**.dart"
      - "example/**.dart"
      - "example/pubspec.yaml"


jobs:
  checkout:
    uses: ziqq/flutter_ci_workflows/.github/workflows/checkout.yml@main
    with:
      flutter-channel: 'stable'
      flutter-version: 3.35.3
      pub-cache-name: 'pub'
      line-length: 80
      threshold: 60
```