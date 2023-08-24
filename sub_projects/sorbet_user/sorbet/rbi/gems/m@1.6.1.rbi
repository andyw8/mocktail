# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `m` gem.
# Please instead update this file by running `bin/tapioca gem m`.

# Runners are in charge of running your tests, depending on the framework
# Instead of slamming all of this junk in an `M` class, it's here instead.
#
# source://m//lib/m/version.rb#1
module M
  class << self
    # Accept arguments coming from bin/m and run tests, then bail out immediately.
    #
    # source://m//lib/m.rb#9
    def run(argv); end
  end
end

# source://m//lib/m/executor.rb#8
class M::Executor
  # @return [Executor] a new instance of Executor
  #
  # source://m//lib/m/executor.rb#9
  def initialize(testable); end

  # source://m//lib/m/executor.rb#13
  def execute; end

  private

  # source://m//lib/m/executor.rb#96
  def runner; end

  # Finds all test suites in this test file, with test methods included.
  #
  # source://m//lib/m/executor.rb#72
  def suites; end

  # Returns the value of attribute testable.
  #
  # source://m//lib/m/executor.rb#50
  def testable; end

  # Shoves tests together in our custom container and collection classes.
  # Memoize it since it's unnecessary to do this more than one for a given file.
  #
  # source://m//lib/m/executor.rb#54
  def tests; end
end

# source://m//lib/m/frameworks.rb#2
class M::Frameworks
  # source://m//lib/m/frameworks.rb#7
  def framework_runner; end

  private

  # @return [Boolean]
  #
  # source://m//lib/m/frameworks.rb#25
  def minitest4?; end

  # @return [Boolean]
  #
  # source://m//lib/m/frameworks.rb#21
  def minitest5?; end

  # @return [Boolean]
  #
  # source://m//lib/m/frameworks.rb#29
  def test_unit?; end

  class << self
    # source://m//lib/m/frameworks.rb#3
    def framework_runner; end

    # @return [Boolean]
    #
    # source://m//lib/m/frameworks.rb#41
    def minitest4?; end

    # @return [Boolean]
    #
    # source://m//lib/m/frameworks.rb#37
    def minitest5?; end

    # source://m//lib/m/frameworks.rb#33
    def minitest_version_major; end

    # @return [Boolean]
    #
    # source://m//lib/m/frameworks.rb#45
    def test_unit?; end
  end
end

# source://m//lib/m/parser.rb#4
class M::Parser
  # @return [Parser] a new instance of Parser
  #
  # source://m//lib/m/parser.rb#5
  def initialize(argv); end

  # source://m//lib/m/parser.rb#10
  def parse; end

  private

  # Returns the value of attribute argv.
  #
  # source://m//lib/m/parser.rb#56
  def argv; end

  # source://m//lib/m/parser.rb#58
  def parse_options!(argv); end

  # Returns the value of attribute testable.
  #
  # source://m//lib/m/parser.rb#56
  def testable; end

  # source://m//lib/m/parser.rb#89
  def wildcard(type); end
end

# source://m//lib/m/runner.rb#7
class M::Runner
  # @return [Runner] a new instance of Runner
  #
  # source://m//lib/m/runner.rb#8
  def initialize(argv); end

  # There's two steps to running our tests:
  # 1. Parsing the given input for the tests we need to find (or groups of tests)
  # 2. Run those tests we found that match what you wanted
  #
  # source://m//lib/m/runner.rb#15
  def run; end
end

# source://m//lib/m/runners/base.rb#2
module M::Runners; end

# source://m//lib/m/runners/base.rb#3
class M::Runners::Base
  # source://m//lib/m/runners/base.rb#8
  def run(_test_arguments); end

  # source://m//lib/m/runners/base.rb#4
  def suites; end

  # source://m//lib/m/runners/base.rb#12
  def test_methods(suite_class); end
end

# source://m//lib/m/runners/minitest_4.rb#3
class M::Runners::Minitest4 < ::M::Runners::Base
  # source://m//lib/m/runners/minitest_4.rb#8
  def run(test_arguments); end

  # source://m//lib/m/runners/minitest_4.rb#4
  def suites; end
end

# source://m//lib/m/runners/minitest_5.rb#3
class M::Runners::Minitest5 < ::M::Runners::Base
  # source://m//lib/m/runners/minitest_5.rb#11
  def run(test_arguments); end

  # source://m//lib/m/runners/minitest_5.rb#4
  def suites; end

  # source://m//lib/m/runners/minitest_5.rb#17
  def test_methods(suite_class); end
end

# source://m//lib/m/runners/test_unit.rb#3
class M::Runners::TestUnit < ::M::Runners::Base
  # source://m//lib/m/runners/test_unit.rb#12
  def run(test_arguments); end

  # source://m//lib/m/runners/test_unit.rb#4
  def suites; end

  # source://m//lib/m/runners/test_unit.rb#16
  def test_methods(suite_class); end
end

# source://m//lib/m/runners/unsupported_framework.rb#3
class M::Runners::UnsupportedFramework < ::M::Runners::Base
  # source://m//lib/m/runners/unsupported_framework.rb#9
  def run(_test_arguments); end

  # source://m//lib/m/runners/unsupported_framework.rb#4
  def suites; end

  private

  # source://m//lib/m/runners/unsupported_framework.rb#15
  def not_supported; end
end

# source://m//lib/m/testable.rb#2
class M::Testable
  # @return [Testable] a new instance of Testable
  #
  # source://m//lib/m/testable.rb#6
  def initialize(file = T.unsafe(nil), lines = T.unsafe(nil), recursive = T.unsafe(nil)); end

  # Returns the value of attribute file.
  #
  # source://m//lib/m/testable.rb#3
  def file; end

  # Sets the attribute file
  #
  # @param value the value to set the attribute file to.
  #
  # source://m//lib/m/testable.rb#3
  def file=(_arg0); end

  # Returns the value of attribute lines.
  #
  # source://m//lib/m/testable.rb#4
  def lines; end

  # source://m//lib/m/testable.rb#13
  def lines=(lines); end

  # Returns the value of attribute passthrough_options.
  #
  # source://m//lib/m/testable.rb#3
  def passthrough_options; end

  # Sets the attribute passthrough_options
  #
  # @param value the value to set the attribute passthrough_options to.
  #
  # source://m//lib/m/testable.rb#3
  def passthrough_options=(_arg0); end

  # Returns the value of attribute recursive.
  #
  # source://m//lib/m/testable.rb#3
  def recursive; end

  # Sets the attribute recursive
  #
  # @param value the value to set the attribute recursive to.
  #
  # source://m//lib/m/testable.rb#3
  def recursive=(_arg0); end
end

# source://m//lib/m/version.rb#2
M::VERSION = T.let(T.unsafe(nil), String)
