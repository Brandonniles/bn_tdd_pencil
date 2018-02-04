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

  it "choice selection method should exist" do
    expect(Display.respond_to?(:choice_selection)).to be(true)
  end

  it "contains an error method for when no pencil is created yet but the user calls a method" do
    expect(Display.respond_to?(:np_err)).to be(true)
  end

  def np_err
  puts "\nNo pencil yet created"
  sleep(1.5)
  end

end
