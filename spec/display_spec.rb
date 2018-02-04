require_relative '../modules/display_module'

describe Display do

  it "create pencil method should exist" do
    expect(Display.respond_to?(:create_pencil)).to be(true)
  end

  it "get durability method should exist" do
    expect(Display.respond_to?(:get_dura)).to be(true)
  end

  it "get length method should exist" do
    expect(Display.respond_to?(:get_length)).to be(true)
  end

  it "get eraser durability method should exist" do
    expect(Display.respond_to?(:get_eraser)).to be(true)
  end


end
