class Pencil
  attr_accessor :paper, :dura

  def initialize(paper:, dura:)
    @paper = paper
    @dura = dura
  end

  def write
    puts "type a string"
    word = $stdin.gets.chomp
    @paper += word
  end

end
