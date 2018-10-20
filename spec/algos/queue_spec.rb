RSpec.describe Algos::Queue do
  let(:queue) { described_class.new }

  it_behaves_like "a list", described_class

  describe "#pop" do
    it "removes the first element from the queue" do
      queue.push 1
      queue.pop
      
      expect(queue.size).to eq 0
    end
  end

  describe "#push" do
    it "adds a new element to the top of the queue" do
      queue.push 1

      expect(queue.size).to eq 1

      queue.push 2

      expect(queue.elements).to eq [1, 2]
    end
  end

  describe "#reverse" do
    it "returns a copy of the array that's in the opposite order" do
      expect(queue.reverse).to eq queue.elements

      queue.push 1
      queue.push 2

      expect(queue.reverse).to eq [2, 1]
    end
  end
end
