require_relative '../lib/pencil'

describe Pencil do
  let(:tp) { Pencil.new(paper: '', dura: 5)}

  it "should have a durability attribute" do
    expect(tp.respond_to?(:dura)).to be(true)
  end

  it "dura should be an integer" do
    expect(tp.dura).to be_a(Integer)
  end

  describe 'tp.write' do
    before do
      $stdin = StringIO.new("a\n")
    end
    after do
      $stdin = STDIN
    end
    it "writing 'a' should decrease dura by 1" do
      expect(tp.dura).to eq(4)
    end
  end

  describe 'tp.write' do
    before do
      $stdin = StringIO.new("BC\n")
    end
    after do
      $stdin = STDIN
    end
    it "writing 'a' should decrease dura by 1" do
      expect(tp.dura).to eq(1)
    end
  end


end
