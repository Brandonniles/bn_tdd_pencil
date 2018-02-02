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
    take_input.chars.each { |chars| chars =~ /[A-Z]/ ? @dura -= 2 : @dura -= 1 }
    @paper += take_input
  end

end
