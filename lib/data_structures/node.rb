module DataStructures
  class Node
    attr_accessor :value, :child

    def initialize(value, child: nil)
      @value = value
      @child = child
    end
  end
end
