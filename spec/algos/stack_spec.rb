RSpec.describe Algos::Stack do
  let(:stack) { described_class.new }

  it_behaves_like "a list", described_class

  describe "#pop" do
    it "removes the first element from the stack" do
      stack.push 1
      stack.pop
      
      expect(stack.size).to eq 0
    end
  end

  describe "#push" do
    it "adds a new element to the top of the stack" do
      stack.push 1

      expect(stack.size).to eq 1

      stack.push 2

      expect(stack.elements).to eq [2, 1]
    end
  end

  describe "#reverse" do
    it "returns a copy of the array that's in the opposite order" do
      expect(stack.reverse).to eq stack.elements

      stack.push 1
      stack.push 2

      expect(stack.reverse).to eq [1, 2]
    end
  end
end
