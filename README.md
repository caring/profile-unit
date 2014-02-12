# profile-unit

Ruby gem that provides a runner that outputs your slowest tests.

## Usage
Run as follows to get output for your slowest 20 tests.

### Rails
Add `ProfilingHelper` to your `test_helper.rb`.

``` ruby
  class ActiveSupport::TestCase
    ...
    include ProfilingHelper
    ...
  end
```

rake test:units TESTOPTS="-- --runner=profiling"
rake test:functionals TESTOPTS="--runner=profiling"
rake test:integration TESTOPTS="--runner=profiling"
