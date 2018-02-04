require_relative '../modules/display_module'

describe Display do

  it "create pencil method should exist" do
    expect(Display.respond_to?(:create_pencil)).to be(true)
  end

end
