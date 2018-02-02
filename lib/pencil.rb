class Pencil
  attr_accessor :paper

  def initialize(paper:)
    @paper = ''
  end

  def write
    puts "type a string"
    word = $stdin.gets.chomp
    @paper = word
  end

end
