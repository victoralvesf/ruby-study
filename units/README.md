### Starting the project

`bundle init`

### Installing _RSpec_

Open the Gemfile

**Add the line**

`gem 'rspec'`

Check if _RSpec_ is correctly installed

**Run**

`rspec --version`

**The output have to be something like**

```
RSpec 3.9
  - rspec-core 3.9.1
  - rspec-expectations 3.9.0
  - rspec-mocks 3.9.1
  - rspec-support 3.9.2
```

### Starting a _RSpec_ project

`rspec --init`

**Expected structure**

```tree
.
├── Gemfile
├── Gemfile.lock
├── .rspec
└── spec
    └── spec_helper.rb
```
