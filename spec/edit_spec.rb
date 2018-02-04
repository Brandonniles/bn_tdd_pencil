require_relative '../lib/pencil'

describe Pencil do
  let(:editp) { Pencil.new(paper: '', dura: 14, length: 12, eraser_dura: 14)}

  it "it should have an edit method" do
    expect(editp.respond_to?(:edit)).to be(true)
  end
end
