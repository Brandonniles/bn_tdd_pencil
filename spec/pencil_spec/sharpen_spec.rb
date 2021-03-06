require_relative '../../lib/pencil'

 describe Pencil do
   let(:sp) { Pencil.new(paper: '', dura: 20, length: 10, eraser_dura: 30)}
   let(:zero) { Pencil.new(paper: '', dura: 15, length: 0, eraser_dura: 30)}

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
       expect(sp.dura).to eq(sp.max_dura)
     end
   end

   context "write 'testing' then call sharpen to restore dura from 13 back to 20" do
     it "should write 'testing' then restore dura to 20" do
       sp.write('testing')
       expect(sp.dura).to eq(13)
       sp.sharpen
       expect(sp.dura).to eq(20)
     end
   end

   it "should have a length attribute" do
     expect(sp.respond_to?(:length)).to eq(true)
   end

   context 'length should decrease by 1 when sharpened' do
     it "length should be 6 after sp.sharpen" do
       sp.sharpen
       expect(sp.length).to eq(9)
     end
   end

   context "write 'Lebron'; call sharpen; 'Lebron' should decrease dura by 7. length == 0; sharpen shouldn't work" do
     it "writes lebron when length == 0. sharpen should not restore dura" do
       zero.write('Lebron')
       expect(zero.dura).to eq(8)
       zero.sharpen
       expect(zero.dura).to eq(8)
     end
   end


 end
