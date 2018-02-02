require_relative '../lib/pencil.rb'

describe Pencil do
  it "should have a write method" do
    expect(Pencil.new.respond_to?(:write)).to eq(true)
  end
end
