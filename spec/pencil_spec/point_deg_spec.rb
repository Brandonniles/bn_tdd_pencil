require_relative '../../lib/pencil'

describe Pencil do
  let(:tp) { Pencil.new(paper: '', dura: 5, length: 10, eraser_dura: 30)}
  let(:tp2) { Pencil.new(paper: '', dura: 8, length: 10, eraser_dura: 30)}
  let(:tp3) { Pencil.new(paper: '', dura: 20, length: 10, eraser_dura: 30)}

  it "should have a durability attribute" do
    expect(tp.respond_to?(:dura)).to be(true)
  end

  it "dura should be an integer" do
    expect(tp.dura).to be_a(Integer)
  end

  it "writing 'a' should decrease dura by 1" do
    tp.write('a')
    expect(tp.dura).to eq(4)
  end


  it "writing 'BC' should decrease dura by 4" do
    tp.write('BC')
    expect(tp.dura).to eq(1)
  end

  context 'prints part of the string if the durability is low' do
    it "returns 'eleph' for 'elephant' when dura == 5" do
      expect(tp.write('elephant')).to eq('You wrote: eleph   ')
    end
  end

  context 'prints the whole string in dura is greater than string.length' do
    it "returns 'pillar' when dura == 8" do
      expect(tp2.write('pillar')).to eq('You wrote: pillar')
    end
  end

  context 'spaces do not affect dura rating' do
    it "writes 'a you     I or' and dura decreases by 8" do
      expect { tp3.write('a you     I or') }.to change(tp3, :dura).by(-8)
    end
  end


end
