require_relative "notes_gems"

class Page

    attr_accessor :datetime, :question, :note, :summary
    
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

    loop do
        
        note = $prompt.ask('Enter note or [1] to exit to main menu:')
        puts
        if note == "1"
            $subject = {subject => new_page}
            break
        else
            new_page.note.push(note)
            new_page.question.push($prompt.ask('Enter a question related to the note:'))
            puts
        end

    end
    
end

def review_note

    puts
    choices = []
    $subject.each_key{|subject| choices.push(subject)}
    $user_input = $prompt.select("Please select from the menu:", choices)
    subject = $subject[$user_input]
    puts
    
    
    table = TTY::Table.new ['Question', 'Note'], [[subject.question[0],subject.note[0]]]
    renderer = TTY::Table::Renderer::Unicode.new(table)
    puts renderer.render
   
end

def quiz

    puts
    choices = []
    $subject.each_key{|subject| choices.push(subject)}
    $user_input = $prompt.select("Please select from the menu:", choices)
    subject = $subject[$user_input]
    puts
    
    loop do

        question =  subject.question.sample
        question_index = question.index(question)
        answer = subject.note[question_index]
        puts question
        puts
        puts "answer? [enter]"
        gets
        puts answer
        puts
        puts "exit quiz?"
        puts
        $user_input = $prompt.yes?('Answer another question?')
        if $user_input == false
            break
        end
        puts

    end


end

font = TTY::Font.new(:standard)
$prompt = TTY::Prompt.new

$subject  = Hash.new


math = Page.new
english =  Page.new
history = Page.new


math.datetime = Time.now
math.question.push("what is 1+1?")
math.note.push ("2")

english.datetime = Time.now
english.question.push("spell 'hello?")
english.note.push ("h,e,l,l,o")

history.datetime = Time.now
history.question.push("ending year of WW2?")
history.note.push ("1945")


$subject = { "Math" => math, 
             "English" => english, 
             "History" => history }

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
                enter_note ($user_input)
            end

        when "Quiz"
           quiz
        when "Review Notes"
            review_note
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
        puts
        puts
    end 
    
end
