module Display
  pencils = []

  def self.get_choice
    puts "Type number that matches your sel and hit enter"
    num = gets.chomp
  end

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

  def self.np_err
  puts "\nNo pencil yet created"
  sleep(1.5)
  end

  def self.create_pencil
    cp = Pencil.new(paper: '', dura: d, length: l, eraser_dura: e)
    pencils << cp
  end

  def self.choice_selection(get_choice)
    case input
    when '1' then create_pencil(pencils)
    when '2' then pencils.length == 0 ? np_err : pencils.last.write
    when '3' then pencils.length == 0 ? np_err : pencils.last.sharpen
    when '4' then pencils.length == 0 ? np_err : pencils.last.erase
    when '5' then pencils.length == 0 ? np_err : pencils.last.edit
    when '6' then pencils.length == 0 ? np_err : pencils.last.stats
    when '0' then abort
    else
      puts "unrecognizable command"
    end
  end

end
