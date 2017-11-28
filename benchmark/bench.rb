require 'memory_profiler'
require 'benchmark/ips'
require 'public_suffix'
require 'mini_suffix'

public_suffix_mem = MemoryProfiler.report do
  100.times { PublicSuffix.domain("www.careers.gov.sg") }
end

mini_suffix_mem = MemoryProfiler.report do
  100.times { MiniSuffix.domain("www.careers.gov.sg") }
end

puts "PublicSuffix.domain total allocated memsize: #{public_suffix_mem.total_allocated_memsize}"
puts "PublicSuffix.domain total retained memsize: #{public_suffix_mem.total_retained_memsize}"
puts "MiniSuffix.domain total allocated memsize: #{mini_suffix_mem.total_allocated_memsize}"
puts "MiniSuffix.domain total retained memsize: #{mini_suffix_mem.total_retained_memsize}"
puts

Benchmark.ips do |x|
  x.report('PublicSuffix.domain') { PublicSuffix.domain("www.careers.gov.sg") }
  x.report('MiniSuffix.domain') { MiniSuffix.domain("www.careers.gov.sg") }
  x.compare!
end
