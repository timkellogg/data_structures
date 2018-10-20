module DataStructures
  class List
    attr_reader :elements

    def initialize
      @elements = []
    end

    def pop
      elements.shift
    end

    def reverse
      elements.reverse
    end

    def size
      elements.count
    end

    def empty?
      !elements.any?
    end
  end
end
