require_relative '../lib/pencil'

describe Pencil do
  let(:edp) { Pencil.new(paper: 'wilson where are you? w   i   l s  o   n', dura: 15, length: 8, eraser_dura: 30)}
  let(:ed0) {Pencil.new(paper: 'hey there is a cup of mac and cheese', dura: 9, length: 12, eraser_dura: 0)}

  it "should have an eraser durabiliity attribute" do
    expect(edp.respond_to?(:eraser_dura)).to be(true)
  end

  context 'all charaters except spaces should degrade eraser by 1' do
    it "eraser_dura degrades by 6 when erasing 'w   i   l s  o   n'" do
      edp.erase('w   i   l s  o   n')
      expect(edp.eraser_dura).to eq(24)
    end
  end

  context 'when eraser_dura == 0, erase does not work' do
    it "erase does not remove 'cup' from @paper" do
      ed0.erase('cup')
      expect(ed0.paper).to eq('hey there is a cup of mac and cheese')
    end
  end


end
