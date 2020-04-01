require "ruby-prof"
require_relative "task-2.rb"

RubyProf.measure_mode = RubyProf::WALL_TIME

result = RubyProf.profile do
  work "data1.txt"
end

printer = RubyProf::CallTreePrinter.new(result)
printer.print(path: "ruby_prof_report", profile: "callgrind")