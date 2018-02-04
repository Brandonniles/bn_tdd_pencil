require_relative '../modules/display_module'

while true
  puts "\nWelcome to Digi-Pencil: (type a number for your selection and hit enter)"
  puts "1. Create a Pencil"
  puts "2. Write"
  puts "3. Sharpen"
  puts "4. Erase"
  puts "5. Edit"
  puts "6. Pencil Stats"
  puts "0. Exit Program"

  Display.choice_selection(Display.get_choice)

end
