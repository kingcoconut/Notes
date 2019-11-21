class Page
    #Page class holds datatime, question and note array for use in notes.rb
    
    attr_accessor :datetime, :question, :note
    
    def initialize 
        @datetime = []
        @question = []
        @note = []
    end

end 