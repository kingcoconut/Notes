require_relative "notes_gems"
require_relative "page"
require_relative "methods"

$subject  = Hash.new
$font = TTY::Font.new(:standard)
$prompt = TTY::Prompt.new

input_notes

puts $font.write("Notes").green
puts

$user_input = nil
  
loop do
    
    begin

        choices = ["Enter Notes", "Review Notes", "Delete Note", "Quiz", "Exit"]
        $user_input = $prompt.select("Please select from the menu:", choices)
        
        case $user_input
        when "Enter Notes"
            enter_note
        when "Review Notes"
            review_note
        when "Delete Note"
            delete_note
        when "Quiz"
           quiz
        when "Exit"
            break
        else 
            puts "please enter valid selection"
        end

    rescue TTY::Reader::InputInterrupt
        break
        puts "/n/nGoodbye/n/n"

    ensure
        puts
        output_note
    end 
    
end


