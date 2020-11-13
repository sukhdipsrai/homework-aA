class Stack
    def initialize
      # create ivar to store stack here!
      @ivar = []
    end

    attr_reader :ivar
    def display
        p ivar
    end

    def push(el)
      # adds an element to the stack
      ivar.push(el)
    end

    def pop
      # removes one element from the stack
      ivar.pop()
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      ivar[-1]
    end
  end

#   my_stack = Stack.new()
#   my_stack.push(5)
#   my_stack.push(10)
#   my_stack.display
#   p my_stack.peek
#   my_stack.pop
#   my_stack.pop
#   my_stack.push(1)
#   p my_stack.peek


class Queue

    def initialize
        @queue = []
    end

    def enqueue(ele)
        @queue.unshift(ele)
    end

    def dequeue 
        @queue.pop()
    end

    def peek
        @queue[-1]
    end

    def display
        p @queue
    end
end

# my_queue = Queue.new()
# (0..5). each {my_queue.enqueue(5)}
# (0..5). each {my_queue.enqueue(1)}

# my_queue.display
# my_queue.dequeue
# my_queue.display


class Map

    def initialize
        @map = []
    end

    def set(k,v)
        found_old_key = true
        @map.each_with_index do |k_v, index|
            if k == k_v[0]
                @map[index][1] = v 
                found_old_key = false
                break
            end
        end
        @map << [k,v] if found_old_key
    end

    def get(k)
        @map.each_with_index do |k_v, index|
            if k == k_v[0]
                return k_v[1]
            end
        end
        nil
    end

    def delete(k)
        @map.each_with_index do |k_v, index|
            if k == k_v[0]
                @map.delete_at(index)
            end
        end
        nil
    end

    def show
        p @map
    end
end


# my_map = Map.new()
# my_map.set(5,4)
# my_map.show
# my_map.set(5,5)
# my_map.set(1,2)
# my_map.set(2,2)
# my_map.delete(1)
# my_map.show
# my_map.delete(5)
# my_map.show