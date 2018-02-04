require_relative "../../lib/pencil"

describe Pencil do
  let(:stats_p) { Pencil.new(paper: 'I like pizza', dura: 55, length: 22, eraser_dura: 88)}

  it "should have a method that gives a stat report" do
    expect(stats_p.respond_to?(:stats)).to be(true)
  end
end
