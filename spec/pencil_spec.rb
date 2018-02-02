require_relative '../lib/pencil.rb'

describe Pencil do
  let(:test_pencil) { Pencil.new(paper: '')}
  it "should have a write method" do
    expect(test_pencil.respond_to?(:write)).to eq(true)
  end

  it "should return a string" do
    expect(test_pencil.write).to be_kind_of(String)
  end

  it "should have a variable for paper" do
    expect(test_pencil.respond_to?(:paper)).to eq(true)
  end

  it "paper should be a string" do
    expect(test_pencil.paper).to be_a(String)
  end

  it "should have a take_input method" do
    expect(test_pencil.respond_to?(:take_input)).to eq(true)
  end

  # it "write method should add a string to @paper" do
  #   expect(test_pencil.write).to change {test_pencil.paper}
  # end
end
