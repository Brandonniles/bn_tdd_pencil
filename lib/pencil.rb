class Pencil
  attr_accessor :paper, :dura

  def initialize(paper:, dura:)
    @paper = paper
    @dura = 4
  end

  def write
    puts "type a string"
    word = $stdin.gets.chomp
    @paper += word
  end

end
