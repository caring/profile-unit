require 'test/unit/ui/console/testrunner'

class ProfileUnit
  class ProfilingRunner < Test::Unit::UI::Console::TestRunner
    def finished(elapsed_time)
      super
      tests = $test_times.sort{|x,y| y[1] <=> x[1]}.first(20)
      output("Top 20 slowest tests:")
      tests.each do |t|
        output("#{t[1].round(2)}s: \t #{t[0]}")
      end
    end
  end
end