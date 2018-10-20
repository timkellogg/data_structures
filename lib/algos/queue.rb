module Algos
  class Queue < List
    def enqueue(element)
      elements << element
    end

    def dequeue
      elements.shift
    end
  end
end
