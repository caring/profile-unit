require 'profile-unit/profiling_helper'
require 'profile-unit/profiling_runner'

Test::Unit::AutoRunner::RUNNERS[:profiling] = proc do |r|
  ProfileUnit::ProfilingRunner
end
