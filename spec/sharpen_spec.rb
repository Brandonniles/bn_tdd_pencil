require_relative '../lib/pencil'

 describe Pencil do
   let(:sp) { Pencil.new(paper: '', dura: 20)}

   it "should have a sharpen method" do
     expect(sp.respond_to?(:sharpen)).to eq(true)
   end

   context 'instance variable for durability initial value should exist' do
     it "@max_dura should exist" do
       expect(sp.respond_to?(:max_dura)).to eq(true)
     end
   end


 end
