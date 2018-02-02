class Pencil
  attr_accessor :paper

  def initialize(paper:)
    @paper = ''
  end

  def take_input
    puts "type a string"
    word = $stdin.gets.chomp
  end

  def write
    'hey'
  end
end
