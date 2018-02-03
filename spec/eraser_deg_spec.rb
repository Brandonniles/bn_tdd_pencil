require_relative '../lib/pencil'

describe Pencil do
  let(:edp) { Pencil.new(paper: '', dura: 15, length: 8, eraser_dura: 30)}

  it "should have an eraser durabiliity attribute" do
    expect(edp.respond_to?(:eraser_dura)).to be(true)
  end
end
