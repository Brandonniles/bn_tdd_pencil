require_relative '../lib/pencil'

describe Pencil do
  let(:editp) { Pencil.new(paper: 'I like baked mac and cheese', dura: 14, length: 12, eraser_dura: 14)}
  let(:their_example) { Pencil.new(paper: 'An onion a day keeps the doctor away', dura: 18, length: 17, eraser_dura: 19)}

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

  context "edited string is longer than deleted space; overlapped characters should be '@' " do
    it "erases 'baked'; edits with 'terrific' " do
        editp.erase('baked')
        expect(editp.paper).to eq('I like       mac and cheese')
        editp.edit('terrific')
        expect(editp.paper).to eq('I like terrif@@c and cheese')
        #added line to verify edit method affects @dura instead writing new tests
        expect(editp.dura).to eq(6)

    end

    it "erases 'onion'; edits with 'artichoke' " do
      their_example.erase('onion')
      expect(their_example.paper).to eq('An       a day keeps the doctor away')
      their_example.edit('artichoke')
      expect(their_example.paper).to eq('An artich@k@ay keeps the doctor away')
      #added line to verify edit method affects @dura instead writing new tests
      expect(their_example.dura).to eq(9)
    end
  end


end
