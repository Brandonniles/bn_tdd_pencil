require_relative '../lib/pencil'

describe Pencil do
  let(:ep) { Pencil.new(paper: 'cavs love kyrie too', dura: 20, length: 10, eraser_dura: 30)}

  it "should have an erase method" do
    expect(ep.respond_to?(:erase)).to be(true)
  end

  context "should delete the last occurence of string and replaced with spaces" do
    it "replaces 'kyrie' from @paper with '     '" do
      ep.erase('kyrie')
      expect(ep.paper).to eq('cavs love       too')
    end
  end

end
