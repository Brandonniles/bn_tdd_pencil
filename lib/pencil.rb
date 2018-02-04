class Pencil
  attr_accessor :paper, :dura, :max_dura, :length, :eraser_dura

  def initialize(paper:, dura:, length:, eraser_dura:)
    @paper = paper
    @dura = dura
    @max_dura = dura
    @length = length
    @eraser_dura = eraser_dura
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

  def complete_deletion(rev_str, rev_paper)
    rev_str.length.times { rev_paper.insert(rev_paper.index(rev_str), ' ') }
    rev_paper.slice!(rev_str)
    @paper = rev_paper.reverse

  end

  def partial_deletion(rev_str, rev_paper)
    # add a space(s)
    @eraser_dura.times { rev_paper.insert(rev_paper.index(rev_str), ' ') }
    # delete a character(s)
    rev_paper.slice!(rev_paper.index(rev_str), @eraser_dura)
    # update eraser_dura
    @paper = rev_paper.reverse

  end

  def erase(take_input)
    rev_str = take_input.reverse
    rev_paper = @paper.reverse
    complete_deletion(rev_str, rev_paper) if @eraser_dura >= rev_str.length
    partial_deletion(rev_str, rev_paper) if (0...rev_str.length).include?(@eraser_dura)
    take_input.each_char { |chr| @eraser_dura -= 1 if chr =~ /\S/ }
    puts 'Eraser is empty' if @eraser_dura <= 0
  end

end
