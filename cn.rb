require 'yaml'
require "tty-prompt"
require "tty-box"
require "tty-font"
require "colorize"

$notes = Hash.new
$subject  = Hash.new


class Page

    attr_reader :datetime, :question, :note, :summary
    
    def initialize 
        @datetime = Time.now
        @question = []
        @note = []
        @summary = nil
    end

end 

def quiz

end

def review_note

end



font = TTY::Font.new(:standard)
prompt = TTY::Prompt.new

puts font.write("Notes").green
puts

$user_input = nil

until $user_input == 3 do
    
    choices = [
        {name: 'Enter notes', value: 1},
        {name: 'Quizz', value: 2},
        {name: 'Exit', value: 3}
      ]
    
    $user_input = prompt.select("Please select from the menu:", choices)
    
    
    case $user_input
    when 1
        puts "Enter key word:"
 
    when 2
         
        puts "quizz"
    when 3
        break
    else 
        puts "please enter valid selection"
    end

end






