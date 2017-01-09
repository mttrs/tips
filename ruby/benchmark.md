## '#to_s' faster than '#{}'
```shell
Calculating -------------------------------------
         "#{}" style     80939 i/100ms
               #to_s     91875 i/100ms
-------------------------------------------------
         "#{}" style  2456779.2 (±11.9%) i/s -   12059911 in   5.007696s
               #to_s  3564591.6 (±14.3%) i/s -   17272500 in   5.007302s  
```
```ruby
require 'benchmark/ips'

Benchmark.ips do |x|
  a = 123
  x.report('"#{}" style') { "#{a}" }
  x.report('#to_s') { a.to_s }
end
```

## '->' same with 'lambda'
```shell
Calculating -------------------------------------
                  ->     66372 i/100ms
              lambda     67189 i/100ms
-------------------------------------------------
                  ->  1115931.6 (±6.1%) i/s -    5575248 in   5.017582s
              lambda  1122176.7 (±4.8%) i/s -    5643876 in   5.042091s
```
```ruby
require 'benchmark/ips'

def foo
  -> x { x + 1 }
end

def bar
  lambda {|x| x + 1 }
end

Benchmark.ips do |x|
  x.report('->') { foo.call 1 }
  x.report('lambda') { bar.call 1  }
end
```
