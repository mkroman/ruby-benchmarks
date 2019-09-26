#!/usr/bin/env ruby
# frozen_string_literal: true

require 'benchmark'

n = 10_000_000

Benchmark.bm do |benchmark|
  benchmark.report("String.new") do
    n.times do
      s = String.new
      s += 'd'
    end
  end

  benchmark.report("literal ''") do
    n.times do
      s = ''
      s += 'd'
    end
  end
end
