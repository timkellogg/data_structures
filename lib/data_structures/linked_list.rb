module DataStructures
  class LinkedList
    attr_reader :head

    def initialize
      @head = nil
    end

    def prepend(value)
      unless head
        @head = Node.new value
        return
      end

      current_head = head
      @head = Node.new value, child: current_head
    end

    def append(value)
      return unless head

      node = head
      while true
        unless node.child
          node.child = Node.new value
          return
        end

        node = node.child
      end
    end

    def append_after(current_node_value, value)
      return unless head

      node = find current_node_value
      current_child = node.child
      node.child = Node.new value, child: current_child
    end

    def append_before(current_node_value, value)
      return unless head

      node = head
      unless head.child
        @head = Node.new value, child: node
        return
      end

      while node.child
        if node.child.value = current_node_value
          current_child = node.child
          node.child = Node.new value, child: current_child
          return
        end

        node = node.child
      end
    end

    def delete_head
      return unless head

      @head = head.child
    end

    def delete_tail
      return unless head

      unless head.child
        @head = head.child = nil
        return
      end

      node = head
      while node.child.child
        node = node.child
      end

      node.child = nil
    end

    def find(value)
      return unless head

      node = head
      while node.child
        return node if node.value == value
        node = node.child
      end
    end

    def values
      return [] unless head

      values = [head.value]

      node = head
      while node.child
        values << node.child.value
        node = node.child
      end

      values
    end
  end
end
