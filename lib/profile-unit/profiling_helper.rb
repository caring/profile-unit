class ProfileUnit
  module ProfilingHelper

    def self.included mod
      $test_times ||= []

      mod.class_eval do
        setup :setup_profiling
        def setup_profiling
          @test_start_time = Time.now
        end

        teardown :teardown_profiling
        def teardown_profiling
          @test_took_time = Time.now - @test_start_time
          $test_times << [name, @test_took_time]
        end
      end

    end

  end
end