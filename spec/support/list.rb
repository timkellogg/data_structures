RSpec.shared_examples "a list" do |object|
  let(:list) { object.new }

  describe "#size" do
    it "returns the number of elements in the list" do
      expect(list.size).to eq 0

      list.push 1
      list.push 2

      expect(list.size).to eq 2
    end
  end

  describe "#empty?" do
    it "returns a boolean for whether there are any elements in the list" do
      expect(list.empty?).to eq true

      list.push 1

      expect(list.empty?).to eq false
    end
  end
end
