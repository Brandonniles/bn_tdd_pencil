module Display
  pencils = []

  def self.get_dura
    puts "What lead durability will your pencil have? (must be in integer greater than 0)"
    d = gets.chomp.to_i
  end

  def self.get_length
    puts "What length will your pencil have? (must be in integer greater than 0)"
    l = gets.chomp.to_i
  end

  def self.get_eraser
    puts "What eraser durability will your pencil have? (must be in integer greater than 0)"
    e = gets.chomp.to_i
  end

  def self.create_pencil
    cp = Pencil.new(paper: '', dura: d, length: l, eraser_dura: e)
    pencils << cp
  end

  def self.choice_selection

  end

end
