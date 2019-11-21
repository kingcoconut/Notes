require_relative "notes_gems"



class Page

    attr_accessor :datetime, :question, :note, :summary
    
    def initialize 
        @datetime = []
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

def delete_note 

end

def input_notes
    $subject = YAML.load(File.read("notes.yml"))
end

def output_note
    File.open("notes.yml", "w") { |file| file.write($subject.to_yaml) }
end

def review_note

    puts

    choices = []
    $subject.each_key{|subject| choices.push(subject)}
    $user_input = $prompt.select("Please select from the menu:", choices)
    subject = $subject[$user_input]

    datetime = subject.datetime 
    question = subject.question
    note = subject.note

    puts
    table = Terminal::Table.new :title => $user_input,
                                :headings => ['Date', 'Question', 'Note'],
                                :alignment => :left 
                           
    for index in 0...datetime.length
        datetime_out = datetime[index].strftime("Created on %m/%d/%Y at %I:%M%p")
        table.add_row [datetime_out, question[index], note[index]]
        table.style = {:all_separators => true, :padding_left => 3,:alignment => :center}
    end
 
    puts table
    puts
    
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


$subject  = Hash.new
$font = TTY::Font.new(:standard)
$prompt = TTY::Prompt.new

input_notes

puts $font.write("Notes").green
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
        puts
        puts
        puts "Goodbye"
        puts
        puts

    ensure
        output_note
    end 
    
end


