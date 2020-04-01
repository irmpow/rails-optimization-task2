require "ruby-prof"
require_relative "task-2.rb"

RubyProf.measure_mode = RubyProf::MEMORY

result = RubyProf.profile do
  work "data1.txt"
end


printer = RubyProf::CallTreePrinter.new(result)
printer.print(path: 'rp_cachegrind_memory', profile: 'profile')
