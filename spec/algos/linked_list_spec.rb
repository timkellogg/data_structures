RSpec.describe Algos::LinkedList do
  subject { described_class.new }

  describe "#initialize" do
    it "creates initial head" do
      expect(described_class.method_defined?(:head)).to eq true
    end
  end

  describe "#prepend" do
    it "sets the new head equal to the prepending node" do
      subject.prepend 1
      expect(subject.values).to eq [1]

      subject.prepend 2
      subject.prepend 3

      expect(subject.values).to eq [3, 2, 1]
    end
  end

  describe "#find" do
    it "returns the node by value" do
      expect(subject.find(1)).to eq nil

      subject.prepend 2

      expect(subject.find(5)).to eq nil

      subject.prepend 3

      expect(subject.find(3).class).to eq Algos::Node
      expect(subject.find(3).value).to eq 3
    end
  end

  describe "#append" do
    it "adds a node on to the last of the linked list" do
      subject.prepend 1
      subject.prepend 2
      subject.append 10
      subject.append 19

      expect(subject.values).to eq [2, 1, 10, 19]
    end
  end

  describe "#delete_head" do
    it "removes the current head and sets the new head as the child if it exists" do
      subject.prepend 1
      subject.prepend 2
      subject.prepend 3
      subject.delete_head

      expect(subject.head.value).to eq 2
    end
  end

  describe "#delete_tail" do
    it "removes the last element" do
      subject.prepend 1
      subject.delete_tail

      expect(subject.values).to eq []

      subject.prepend 1
      subject.prepend 2
      subject.prepend 3
      subject.delete_tail

      expect(subject.values).to eq [3, 2]
    end
  end

  describe "#append_after" do
    it "adds the element as a child of the element by the same value" do
      subject.prepend 1
      subject.prepend 2
      subject.prepend 4
      subject.append_after 4, 3

      expect(subject.values).to eq [4, 3, 2, 1]
    end
  end

  describe "#append_before" do
    it "adds the element as a parent of the element by the same value" do
      subject.prepend 1
      subject.append_before 1, 0

      expect(subject.values).to eq [0, 1]

      subject.prepend 2
      subject.prepend 4
      subject.append_before 2, 3

      expect(subject.values).to eq [4, 3, 2, 0, 1]
    end
  end
end
