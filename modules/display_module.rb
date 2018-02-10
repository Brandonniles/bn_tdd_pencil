require_relative '../lib/pencil'

module Display
  attr_accessor :pencils

  @pencils = []

  def self.take_input
    puts "type a string"
    gets.chomp
  end

  def self.get_choice
    puts "Type number that matches your selection and hit enter"
    gets.chomp
  end

  def self.get_dura
    puts "What lead durability will your pencil have? (must be in integer greater than 0)"
    gets.chomp.to_i
  end

  def self.get_length
    puts "What length will your pencil have? (must be in integer greater than 0)"
    gets.chomp.to_i
  end

  def self.get_eraser
    puts "What eraser durability will your pencil have? (must be in integer greater than 0)"
    gets.chomp.to_i
  end

  def self.np_err
  puts "\nNo pencil yet created"
  sleep(1.5)
  end

  def self.create_pencil(pencils)
    cp = Pencil.new(paper: '', dura: get_dura, length: get_length, eraser_dura: get_eraser)
    pencils << cp
  end

  def self.choice_selection(get_choice)
    case get_choice
    when '1' then create_pencil(@pencils)
    when '2' then @pencils.length == 0 ? np_err : @pencils.last.write(take_input)
    when '3' then @pencils.length == 0 ? np_err : @pencils.last.sharpen
    when '4' then @pencils.length == 0 ? np_err : @pencils.last.erase(take_input)
    when '5' then @pencils.length == 0 ? np_err : @pencils.last.edit(take_input)
    when '6' then @pencils.length == 0 ? np_err : @pencils.last.stats
    when '0' then abort
    else
      puts "unrecognizable command"
    end
  end

end
