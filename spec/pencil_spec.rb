require_relative '../lib/pencil.rb'

describe Pencil do
  it "should have a write method" do
    expect(Pencil.new.respond_to?(:write)).to eq(true)
  end

  it "should return a string" do
    expect(Pencil.new.write).to be_kind_of(String)
  end
end
