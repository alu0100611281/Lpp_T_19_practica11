require "bundler/gem_tasks"


task :default => :spec

desc "Run RSpec code examples"
task :spec do
   sh "rspec -I. -Ilib -Ispec spec/quiz_spec.rb"
end

task :install do
    sh "gem install  quizkarenjose-0.0.1.gem" 
end

task :build do
   sh "gem build  quizkarenjose-0.0.1.gem"
end

