class Stack
  def initialize(stack = [])
    @stack = stack
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end

end

class Queue
  def initialize(queue = [])
    @queue = queue
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    @queue
  end
end

class Map
  def initialize(map = [])
    @map = map
  end

  def assign(key, value)
    if self.has_key?(key)
      @map.map! do |entry|
        if entry[0] == key
          [key, value]
        else
          entry
        end

      end
    else
      @map << [key, value]
    end
  end

  def has_key?(key)
    @map.each do |entry|
      return true if entry[0] == key
    end

    false
  end

  def lookup(key)
    @map.each_index { |i|
      return @map[i] if @map[i][0] == key }

    nil
  end

  def remove(key)
    @map.delete_if { |entry| entry[0] == key }
  end

  def show
    @map
  end
end

p map = Map.new([[:dog, "goodboye"],[:cat, "meme machine"]])
p map.lookup(:dog)
p map.assign(:giraffe, "long horse")
p map.remove(:cat)
p map.show
