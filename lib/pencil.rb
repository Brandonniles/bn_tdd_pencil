class Pencil
  attr_accessor :paper, :dura, :max_dura, :length

  def initialize(paper:, dura:, length:)
    @paper = paper
    @dura = dura
    @max_dura = dura
    @length = length
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
    @length > 0 ? (@dura = @max_dura) && (@length -= 1) : "Cannot sharpen, length is 0"
  end

  def erase(take_input)
    rev_str = take_input.reverse
    rev_paper = @paper.reverse
    rev_str.length.times { rev_paper.insert(rev_paper.index(rev_str), ' ') }
    rev_paper.slice!(rev_str)
    @paper = rev_paper.reverse
  end

end
