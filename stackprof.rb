require "stackprof"
require_relative "task-2.rb"

StackProf.run(mode: :wall, out: "stackprof_reports/stackprof.dump", interval: 1000) do
  work "data1.txt"
end