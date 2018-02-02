require_relative '../lib/pencil'

describe Pencil do
  let(:tp) { Pencil.new(paper: '', dura: 5)}

  it "should have a durability attribute" do
    expect(tp.respond_to?(:dura)).to be(true)
  end

  it "dura should be an integer" do
    expect(tp.dura).to be_a(Integer)
  end
end