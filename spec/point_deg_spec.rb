require_relative '../lib/pencil'

describe Pencil do
  let(:tp) { Pencil.new(paper: '', dura: 5)}

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
      expect(tp.write('elephant')).to eq('eleph')
    end
  end


end
