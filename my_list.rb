require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  attr_reader :list

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 }) # Expected: true
puts(list.all? { |e| e > 5 }) # Expected: false

# Test #any?
puts(list.any? { |e| e == 2 }) # Expected: true
puts(list.any? { |e| e == 5 }) # Expected: false

# Test #filter
p(list.filter(&:even?)) # Expected: [2, 4]
