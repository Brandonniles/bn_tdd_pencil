require_relative '../lib/pencil'

describe Pencil do
  let(:ep) { Pencil.new(paper: '', dura: 20, length: 10)}

  it "should have an erase method" do
    expect(ep.respond_to?(:erase)).to be(true)
  end
end
