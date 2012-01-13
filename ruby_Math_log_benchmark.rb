require 'benchmark'

str=""
puts Benchmark::CAPTION
puts Benchmark.measure{
1000000.times do
str << "hoge"
end
}
puts Benchmark.measure{
500000.times do
Math.log(25.0) / Math.log(5.0)
end
}
