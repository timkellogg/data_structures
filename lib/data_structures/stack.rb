module DataStructures
  class Stack < List
    def push(element)
      elements.unshift element
    end
  end
end
