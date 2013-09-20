def square
  ->(x) { x*x }
end

def apply(f, *as)
  as.inject(f.curry) do |g, a|
    g.call(a)
  end
end

def add
  ->(x,y) { x + y }
end

def map(enumerable, b)
  enumerable.map(&b)
end

def foldl
  ->(rf,b,arr) {
    arr.inject(b, &rf)
  }
end




puts apply(foldl, add, 0, [1, 2, 3])
