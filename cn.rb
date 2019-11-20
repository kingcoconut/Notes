require 'yaml'
require "tty-prompt"
require "tty-box"
require "tty-font"
require "colorize"

class Page

    attr_reader :datetime, :question, :note, :summary
    
    def initialize 
        @datetime = Time.now
        @question = []
        @note = []
    end

end 

def enter_note(subject)

    puts
    new_page = Page.new
    note = nil

        git note = $prompt.ask('Enter note or [1] to exit to main menu:')
        puts note
        if note == "1"
            $subject = {subject => new_page}
        else
            new_page.note.push(note)
            new_page.question.push($prompt.ask('Enter a question related to the note:'))
        end
    
end



def review_note
    
end

def quiz

end





font = TTY::Font.new(:standard)
$prompt = TTY::Prompt.new

$subject  = Hash.new

$subject = { "Math" => 1, "English" => 2, "History" => 3 }

puts font.write("Notes").green
puts

$user_input = nil


    
loop do
    
 
    begin

        choices = ["Enter Notes", "Review Notes", "Quiz", "Exit"]
        $user_input = $prompt.select("Please select from the menu:", choices)
        
        case $user_input
        when "Enter Notes"
            
            puts
            puts("Select as subject or add a new subject:")
            puts
            choices = []
            $subject.each_key{|subject| choices.push(subject)}
            choices.push ("New Subject")
            $user_input = $prompt.select("Please select from the menu:", choices)
        
            if $user_input == "New Subject"
            
                subject = $prompt.ask('What is your subject?')
                $subject = {subject => nil}
                enter_note (subject)
            
            else  

            end

        when "Quiz"
            
            puts "quiz"
        
        when "Review Notes"
        
        when "Exit"
            break
        else 
            puts "please enter valid selection"
        end

    rescue TTY::Reader::InputInterrupt
        break
    ensure
        puts
        puts
        puts "Goodbye"
    end 
    
end








