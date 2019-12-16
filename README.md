<p align="center"><img src ="https://github.com/alicanakkus/pinder-action/blob/master/password.png" width="40%" align="center" alt="password"></p>

# pinder
pinder checks your source code to prevent possible security problems. you can configure it when pull requests opened/modified or pushing codes to master.

## Table of Contents
- [Usage](#usage)
  * [Valid Parameters](#applying)
- [Other Similar Projects](#other-similar-projects)  
- [Acknowledgements](#acknowledgements)  
- [Disclaimer](#disclaimer)  
- [Contribute](#contribute)  
- [Code of Conduct](#code-of-conduct)  
- [License](#license)  

## Usage

See the `check.yml` file for an example run action. Demo available at [pinder-action-test](https://github.com/AlicanAkkus/pinder-action-test)

```
name: check

on:
  push:
    branches:
      - master
  pull_request:
    branches:
      - master

jobs:
  build:
    runs-on: ubuntu-18.04
    steps:
      - uses: actions/checkout@master
      - name: Check password
        uses: AlicanAkkus/pinder-action@0.1

```

## Contribute

Any contributions are welcome! Please see the [contributing](CONTRIBUTING.md) file for details.

## Code of Conduct

Please check the [code of conduct](CODE_OF_CONDUCT.md) page for efficient collaboration and communication.

## License

This project licensed under [MIT](LICENSE).
