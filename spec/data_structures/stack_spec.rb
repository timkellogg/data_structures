RSpec.describe DataStructures::Stack do
  subject { described_class.new }

  describe "#pop" do
    it "removes the first element from the stack" do
      subject.push 1
      subject.pop
      
      expect(subject.size).to eq 0
    end
  end

  describe "#push" do
    it "adds a new element to the top of the stack" do
      subject.push 1

      expect(subject.size).to eq 1

      subject.push 2

      expect(subject.elements).to eq [2, 1]
    end
  end

  describe "#reverse" do
    it "returns a copy of the array that's in the opposite order" do
      expect(subject.reverse).to eq subject.elements

      subject.push 1
      subject.push 2

      expect(subject.reverse).to eq [1, 2]
    end
  end

  describe "#size" do
    it "returns the number of elements in the stack" do
      expect(subject.size).to eq 0

      subject.push 1
      subject.push 2

      expect(subject.size).to eq 2
    end
  end

  describe "#empty?" do
    it "returns a boolean for whether there are any elements in the stack" do
      expect(subject.empty?).to eq true

      subject.push 1

      expect(subject.empty?).to eq false
    end
  end
end
