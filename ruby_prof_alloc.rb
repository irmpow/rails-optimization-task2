require "ruby-prof"
require_relative "task-2.rb"

RubyProf.measure_mode = RubyProf::ALLOCATIONS

result = RubyProf.profile do
  work "data1.txt"
end


printer = RubyProf::GraphHtmlPrinter.new(result)
printer.print(File.open("ruby_prof_report/graph_alloc.html", "w+"))

printer = RubyProf::CallStackPrinter.new(result)
printer.print(File.open("ruby_prof_report/callstack_alloc.html", "w+"))
