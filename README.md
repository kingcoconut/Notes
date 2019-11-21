# notes.rb

## Background

Notes is based on the Cornell Note Taking system devised by Prof. Walter Pauk 
of Cornell University in 1950.  The notes system has 2 columns divided 
proportionally vertically down the page, as well as a small section at the bottom
of the page.  In the left hand column key words and questions are list related 
to the topic.  In the right hand side note are taken as per the user preference.
The small section at the bottom is an optional section for a summary of the 
notes.  The image below shows a sketch of the of the Cornell Note Taking system.

Cornell Notes: 

![](/docs/Cornell_Notes.jpg)

---
## Description
To make the Cornell Note Taking system more efficient, the notes.rb terminal
application has been created.  The aim is to allow the user to input data 
directly into a CLI terminal to be stored for future study and review.

Some modifications are required from the original Cornell Notes:

1. The summary will not be included in notes.rb. This is due to its optionality 
of use and necessity.

2. The left hand column will primarily focuses on questions instead of key words.
Based on previous use, this has been the most important feature when reviewing
study notes.

3. The questions are specifically related to the corresponding note. This allows 
for quizzing functionality when reviewing the notes.

---
## Installation (Linux CLI only)

Installation of notes.rb make use of bundler and install the following gems (The "yaml" gem is natively install with ruby):

* "colorize"
* "tty-prompt"
* "tty-table"
* "tty-font"

For installation, change to the desired directory for installation and input the following command into the Linux CLI:

~~~ 
./notes.sh 
~~~

---
## Intended Use
notes.rb is designed to not required the use of paper, therefore not requiring
pages to be drawn up before hand, saving time and space.  It is primarily 
intended to be used in class room setting where writing, and laptop space is at 
a premium.  The intention is for the user to eliminate the need for paper based 
notes.

---
## Target Audience
notes.rb is primarily focused on the students or academics who are required to
quickly take notes and require a quick method of review later.    The quiz 
function allows for the user to self-assess before an important event.

Users may also find it useful to take notes of a non academic nature such as 
important dates or events. notes.rb will allow the notes based on the question
related to the important note (i.e. what is "such-n-such"'s birthday?) 

---
## Functionality and User Interaction
Functionality of notes.rb includes:

* **Save notes:** notes.rb will save the notes and the relating questions to 
a yaml file in the directory where notes.rb is located for future use 
and review. Once a note is taken by the user, with a corresponding question,
the note saved locally with the loaded data from previous note taking sessions. 
Saved notes from previous sessions will be loaded on entry of notes.rb. On 
exiting of notes.rb the data from previous and current sessions will be save to
a yaml file  for future use.


* **Review notes:** The user will be able to review all notes taken in current
and previous sessions.  The user will firstly be asked which subject the notes 
are related to. Once the subject is defined, the screen will output a list of
all noted taken from previous and current session.  If the user required to 
change subjects, and option will be available to return to the main menu where
the user can re-enter the review notes section as required.  At this time there 
isn't functionality to export to file.  This is due to the intention of notes.rb
to be a purely electronic based system.

* **Review notes:**  The user will be able to use the quiz function to test 
their knowledge on notes taken in current and previous sessions.  With all 
previous data being loaded into notes.rb, the user can now select from a list 
of current or previous subjects.  A question related to previous notes taken in 
the subject will be produced in the terminal window. The user can now think of 
then answer.  Once the user has thought of the answer or is having trouble 
answering, the user can hit enter and the note is produced in the terminal 
window. This cycle can repeat as many times as the user requires.  
---
## Error Handling
* If the user wishes to exit through 'ctrl-c' notes.rb will exit gracefully with
a good bye message
* The use of 'tty-prompt' allows for clean input from the terminal window.  
note.rb makes use of the selector to achieve this.
* 

---
## Control Flow
The control flow for notes.rb is as follows: 

![](/docs/Control_Flow.jpg)

---

## Project Management and Trello

[Link to Trello for notes.rb](https://trello.com/b/Ex83gUWh "note.rb Trello")
---
## Testing

### Test 1: Note Taking
1. 


### Test 2: Quiz
1. 

---

# Status Updates

## Monday, 18th Nov 2019 - Reviewing a list of requirements:

* .md file
    - describe at a high level what the application will do
    - identify the problem it will solve and explain why you are developing it
    - identify the target audience
    - explain how a member of the target audience will use it

* Features list
    - at least 3 features - describe
    - loops, variables and error handling

* Outline
    - user interaction and experience
    - interaction with each feature
    - how errors will be handled

* Control flow
    - workflow/logical flow of the application
    - integration of features
    - us UML

* Implementation plan
    - how each feature will be implemented
    - check list of each task for each features
    - prioritisation of different features or checklist items
      within a feature
    - provide a deadline, duration or other time indicator

* Status update
    - provide 2 status updates
    - significant changes to features or implementation
    - issues or roadblocks

* Ruby
    - variables
    - variable scope
    - loops
    - conditionals
    - control structures
    - functions for - error handling
                    - input output
                    - command line arguments

* Gems
    - at least 4 gems
    - function for importing gems

* Philosophy 
    - DRY
    - style and conventions

* Instructions - help file
    - installation steps
    - dependencies
    - system/hardware requirements
    - explanation of each feature

* Test
    - 2 test sets
    - expected results

* Github
    - 20 commits
    - message summaries
    - push to repository

* Project management
    - Trello 
    - screen shots

* Bash scripts
    - turn application into an executable
    - or package the application for use as a module or dependency

* Presentation
    - walk through 5 min

---
## Wednesday, 20th Nov 2019 - Building application:

* Decision on export not to be added due to the intention to keep the application electronic only.
* Decision to not include summary in notes.rb due to usage not being essential at this stage.
* Trello created
* Control flow created
* Completed building 'Page' class
* Completed initial menu with 'tty-prompt' gem
* Completed note taking method
* Completion of quiz method
* Partial completion note review method with 'tty table'.  Issues with the output to table and borders

---
## Thursday, 21st Nov 2019 - Completing application: