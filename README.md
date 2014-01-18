grunt-bower-require-test
========================

Playing around with npm, bower and requirejs integration and automation.


Install and initialize with:
-----
`$ npm install && grunt`

Results
-----
- changing version in the package.json should automatically update the bower.json file
- version in the package.json can be changed via grunt release task(s)
- changing the bower.json file will:
  - remove all existing bower component files
  - install all dependencies listed in bower.json
  - update the requirejs config file with the dependencies

Note: in attempting to avoid leaving orphan dependencies, the aggressive clean may be too much overhead depending on how often that file is changed.
