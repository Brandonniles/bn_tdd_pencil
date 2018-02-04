require_relative '../lib/pencil'

describe Pencil do
  let(:editp) { Pencil.new(paper: 'I like baked mac and cheese', dura: 14, length: 12, eraser_dura: 14)}

  it "it should have an edit method" do
    expect(editp.respond_to?(:edit)).to be(true)
  end

  context 'inserts a string into the space of a deleted word' do
    it "erases 'like'; edits with 'love'" do
      editp.erase('like')
      expect(editp.paper).to eq('I      baked mac and cheese')
      editp.edit('love')
      expect(editp.paper).to eq('I love baked mac and cheese')
    end

  end
end
