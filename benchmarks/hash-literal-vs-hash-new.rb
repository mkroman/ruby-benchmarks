#!/usr/bin/env ruby
# frozen_string_literal: true

require 'benchmark'

n = 10_000_000

Benchmark.bm do |benchmark|
  benchmark.report("Hash.new") do
    n.times do
      h = Hash.new
    end
  end

  benchmark.report("literal {}") do
    n.times do
      s = {}
    end
  end
end
