require_relative '../lib/pencil.rb'

describe Pencil do
  let(:test_pencil) { Pencil.new(paper: '', dura: 18, length: 7, eraser_dura: 30)}
  let(:append_pencil) { Pencil.new(paper: 'hey you', dura: 18, length: 7, eraser_dura: 30)}

  it "should have a write method" do
    expect(test_pencil.respond_to?(:write)).to eq(true)
  end

  it "should have a variable for paper" do
    expect(test_pencil.respond_to?(:paper)).to eq(true)
  end

  it "paper should be a string" do
    expect(test_pencil.paper).to be_a(String)
  end

  it "write method should return a string" do
    expect(test_pencil.write('hey')).to be_a(String)
  end

  it "should add a string to paper" do
    expect(test_pencil.write('bubble')).to eq("You wrote: #{test_pencil.paper}")
  end

  it "should append a string to the end of paper" do
    append_pencil.write('working')
    expect(append_pencil.paper).to eq('hey youworking')
  end

end
