class Pencil
  attr_accessor :paper, :dura

  def initialize(paper:, dura:)
    @paper = paper
    @dura = dura
  end

  def take_input
    puts "type a string"
    output = gets.chomp
  end

  def write(take_input)
    string = []
    take_input.chars.each do |c|
      @dura > 0 ? string << c : string << ' '
      @dura -= 1 if c =~ /[a-z]/
      @dura -= 2 if c =~ /[A-Z]/
    end
    @paper += string.join
    "You wrote: #{string.join}"
  end

  def sharpen

  end

end
