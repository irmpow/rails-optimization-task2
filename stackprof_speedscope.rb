require 'stackprof'
require 'json'
require_relative 'task-2.rb'

profile = StackProf.run(mode: :wall, raw: true) do
  work 'data.txt', true
end
File.write('stackprof_reports/stackprof.json', JSON.generate(profile))