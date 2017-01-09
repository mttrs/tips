# [RUBYKAIGI 2014](http://rubykaigi.org/2014)

## [Eventifire](http://eventifier.com/event/rubykaigi14/popular): Showcase, photo, video, tweet etc
## [youtube](https://www.youtube.com/channel/UCBSg5zH-VFJ42BGQFk4VH2A/featured)

## DAY1(18th Sep)

### [CRuby Committers Who's Who in 2014](http://www.slideshare.net/nagachika/crubycommitterswhoswhoin2014)

### Building the Ruby interpreter
- Keynote

### [Symbol GC](http://www.slideshare.net/authorNari/symbol-gc)

### Controller Testing: You’re Doing It Wrong

### Eliminating Giant VM Lock in Ruby through Hardware Transactional Memory

### [Continuous Delivery at GitHub](https://speakerdeck.com/rsanheim/continuous-delivery-at-github?slide=41)

### What's wrong with your app?

### [Egison](https://github.com/egison/egison-ruby)

### [Cores unleashed Part II: Introduction to GobiesVM](https://speakerdeck.com/brucehsu/core-unleashed-part-ii-introduction-to-gobiesvm-and-stm-at-rubykaigi-2014)
- [Source](https://github.com/brucehsu/GobiesVM)

### [Hypermedia: The Missing Element to Building Adaptable Web APIs in Rails](http://www.slideshare.net/tkawa1/rubykaigi2014-hypermedia-the-missing-element)

### [Gem of this Week](https://speakerdeck.com/mitaku/rubykaigi-2014-gem-of-this-week)

### Inside RubyMotion for Android
### JRuby 9000 Project Update


## DAY2(19th Sep)

### Sweaters as a Service
  Just 3 days to make it.

### [Going the Distance](https://speakerdeck.com/schneems/going-the-distance)
[source](https://github.com/schneems/going_the_distance)
- Branch managing
```
 ---------------> branch
  ^     ^
  |     |  BUG Fix: Always fix in trunk
  |     |
---------------------------------> trunk
```

### ServerEngine
- Health check = heatbeat
 
### [synvert](https://github.com/xinminlabs/synvert)
- [convert ruby code to better syntax](http://xinminlabs.github.io/synvert/)
- [synvert-tools](http://synvert-tools.herokuapp.com/)

### RSpec 2 -> 3
- [transpec](https://github.com/yujinakayama/transpec)

### Traits: Factory girl tips
- http://qiita.com/ogomr/items/935da1072301ddc1aeaf
- http://techracho.bpsinc.jp/morimorihoge/2013_08_23/12744

### Idea
- Idea -> probability theory, Conditional expectation(E[Y|X])
- Try -> Coding 
- Coding -> Independence -> Many kind of coding -> Coding, Coding and Coding

### Code review
- Say 'It breakes Ruby diversity.'.

### [RailsGirls: Not Only For Girls](http://blog.yuryu.jp/2014/09/rubykaigi-2014.html)
Worth to see the slide and the video.

### [<%= link_to "bundle", "update" %> - Make "bundle update" more fun to review](https://speakerdeck.com/kyanny/percent-equals-link-to-bundle-update-percent-make-bundle-update-more-fun-to-review)
- [blog](http://blog.kyanny.me/entry/2014/09/22/132359)

## DAY3(20th Sep)

### [Speeding up Rails 4.2](https://speakerdeck.com/tenderlove/gao-du-nakodo)
Takoyaki kamen:) Let's say 駄洒落 with `#駄洒落クラブ`
- Rack -> [Rack2](https://github.com/tenderlove/the_metal), the status is experimental, but let's make the HTTP landscape for Ruby even more amazing!
```ruby
Rack
def call(env); end
#=> env is global.
```
```ruby
Rack2(TheMetal)
def call(req, res); end
#=> I/O like
```
Tender love looks at `View` stuff in Rails. Mainly, momory reduction.
- [Benchmark/ips](https://github.com/evanphx/benchmark-ips)
It's better than raw [benchmark](http://www.ruby-doc.org/stdlib-2.1.1/libdoc/benchmark/rdoc/Benchmark.html)
- [Allocation Tracer](https://github.com/ko1/allocation_tracer)

Let's upgrade to Ruby 2.1. Because it supports `GC.stat()`.

[GC.stat in 1.9.3](http://ruby-doc.org/core-1.9.3/GC.html#method-c-stat)

[GC.stat in 2.1.1](http://ruby-doc.org/core-2.1.1/GC.html#method-c-stat)
=> Can check `total_allocated_object`!

- Eliminate Object
- Limit Types
- Fewer Types = Faster Code
- Measure, Measure and Measure
- The fastest code is non-exixisting code.

### [Practical meta-programming in Application](https://speakerdeck.com/moro/practical-metaprogramming-in-application)

### Reish, an unix shell for rubyist.
irb < reish << pry

### [Walking around the ruby forest more deeply](https://speakerdeck.com/yotii23/walking-around-the-ruby-forest-more-deeply)
Introduced
- [ruby under a microscope](http://patshaughnessy.net/ruby-under-a-microscope)
- [ruby hacking guide(En)](http://ruby-hacking-guide.github.io/)
- [ruby hacking guide(Ja)](http://i.loveruby.net/ja/rhg/book/)

### [8bit Game Development With Ruby](http://sssslide.com/speakerdeck.com/remore/burn-8-bit-game-development-with-ruby)

### The role of ruby in the single page app.
Less XHR, more Rails.

### [Ruby 2.1 in Production](http://cl.ly/0d1M1l1h0F3e)
- [peek](https://github.com/peek/peek)
- [rbtrace](https://github.com/tmm1/rbtrace)
- [stackprof](https://github.com/tmm1/stackprof)
- [rblineprof](https://github.com/tmm1/rblineprof)

