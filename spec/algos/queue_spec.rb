RSpec.describe Algos::Queue do
  let(:queue) { described_class.new }

  describe "#dequeue" do
    it "removes the first element from the queue" do
      queue.enqueue 1
      queue.dequeue
      
      expect(queue.size).to eq 0
    end
  end

  describe "#enqueue" do
    it "adds a new element to the top of the queue" do
      queue.enqueue 1

      expect(queue.size).to eq 1

      queue.enqueue 2

      expect(queue.elements).to eq [1, 2]
    end
  end

  describe "#reverse" do
    it "returns a copy of the array that's in the opposite order" do
      expect(queue.reverse).to eq queue.elements

      queue.enqueue 1
      queue.enqueue 2

      expect(queue.reverse).to eq [2, 1]
    end
  end

  describe "#size" do
    it "returns the number of elements in the queue" do
      expect(queue.size).to eq 0

      queue.enqueue 1
      queue.enqueue 2

      expect(queue.size).to eq 2
    end
  end

  describe "#empty?" do
    it "returns a boolean for whether there are any elements in the queue" do
      expect(queue.empty?).to eq true

      queue.enqueue 1

      expect(queue.empty?).to eq false
    end
  end
end
