require_relative '../lib/pencil.rb'

describe Pencil do
  let(:test_pencil) { Pencil.new(paper: '')}
  let(:append_pencil) { Pencil.new(paper: 'hey you')}

  it "should have a write method" do
    expect(test_pencil.respond_to?(:write)).to eq(true)
  end

  it "should have a variable for paper" do
    expect(test_pencil.respond_to?(:paper)).to eq(true)
  end

  it "paper should be a string" do
    expect(test_pencil.paper).to be_a(String)
  end

  describe 'test_pencil.write' do
    before do
      $stdin = StringIO.new("working\n")
    end
    after do
      $stdin = STDIN
    end
    it "mock the gets input and return a string" do
      expect(test_pencil.write).to eq('working')
    end

    it "write method should return a string" do
      expect(test_pencil.write).to be_a(String)
    end

    it "should add a string to paper" do
      expect(test_pencil.write).to eq(test_pencil.paper)
    end

    it "should append a string to the end of paper" do
      append_pencil.write
      expect(append_pencil.paper).to eq('hey youworking')
    end


  end

  # it "append a string to the end of paper" do
  #   let(:tp) { Pencil.new(paper: ' test')}
  #   expect(tp.write).to eq('hey youworking')
  # end

  # it "take_input should return a string" do
  #   expect(test_pencil.take_input).to be_a(String)
  # end


  # it "write method should add a string to @paper" do
  #   expect(test_pencil.write).to change {test_pencil.paper}
  # end
end
