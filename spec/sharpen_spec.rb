require_relative '../lib/pencil'

 describe Pencil do
   let(:sp) { Pencil.new(paper: '', dura: 20)}
   let(:equal_p) { Pencil.new(paper: '', dura: 88) }

   it "should have a sharpen method" do
     expect(sp.respond_to?(:sharpen)).to eq(true)
   end

   context 'instance variable for durability initial value should exist' do
     it "@max_dura should exist" do
       expect(sp.respond_to?(:max_dura)).to eq(true)
     end
   end

   context 'a new pencil should have equal dura and max_dura values' do
     it "max_dura and dura should be equal" do
       expect(equal_p.dura).to eq(equal_p.max_dura)
     end
   end


 end
