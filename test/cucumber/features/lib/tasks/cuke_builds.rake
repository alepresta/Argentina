require 'rubygems'
require 'bundler'

namespace :build do
  desc "Launch all cuke builds"
  task :all do
    threads = []
    %w{build:one build:two build:three}.each do |cuke_tag|
      threads << Thread.new(cuke_tag) do |thread|
        Rake::Task[thread].execute
      end
    end
    threads.each { |thread| thread.join }
  end

  desc "Runs all cukes with @one tag"
  task :one do
    Bundler.with_clean_env do
      console_output = ""
      IO.popen("thor set:chrome && cucumber -t @one", 'r+') do |pipe|
        puts console_output = pipe.read
        pipe.close_write
      end
    end
  end

  desc "Runs all cukes with @two tag"
  task :two do
    sleep 1
    Bundler.with_clean_env do
      console_output = ""
      IO.popen("thor set:safari && cucumber -t @two", 'r+') do |pipe|
        puts console_output = pipe.read
        pipe.close_write
      end
    end
  end

  desc "Runs all cukes with @three tag"
  task :three do
    sleep 2
    Bundler.with_clean_env do
      console_output = ""
      IO.popen("thor set:firefox && cucumber -t @three", 'r+') do |pipe|
        puts console_output = pipe.read
        pipe.close_write
      end
    end
  end
end
