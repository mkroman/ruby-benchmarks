#!/usr/bin/env ruby
# frozen_string_literal: true

require 'English'
require 'benchmark/ips'

n = 10_000_000

'hello' =~ /.(ell)o/

Benchmark.ips do |benchmark|
  benchmark.report('$~') do
    n.times do
      v = $~
    end
  end

  benchmark.report('$LAST_MATCH_INFO') do
    n.times do
      v = $LAST_MATCH_INFO
    end
  end
  benchmark.compare!
end

