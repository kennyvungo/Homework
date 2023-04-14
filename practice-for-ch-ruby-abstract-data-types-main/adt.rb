class Stack
  def initialize
    @stack = []
    # create ivar to store stack here!
  end

  def push(el)
    @stack << el
    # adds an element to the stack
  end

  def pop
    @stack.pop
    # removes one element from the stack
  end

  def peek
    @stack[0]
    # returns, but doesn't remove, the top element in the stack
  end
end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end


class Map

    def initialize
        @map = []
    end

    def set(key,value)
        @map << [key,value]
    end

    def get(key)
        @map.each{|ele| return ele[1] if ele[0] == key}
    end

    def delete(key)
        @map.each.with_index{|ele,i| @map.slice!(i) if ele[0] == key}
    end

    def show
        @map
    end


end

# ken = Map.new
# ken.set(1,"a")
# ken.set(3,"c")
# ken.set(4,"d")
# ken.set(13,"m")
# ken.set(20,"q")
# p ken.show
# ken.delete(4)
# p ken.get(1)
