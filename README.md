# Notes

## Background

Notes is based on the Cornell Note Taking system devised by Prof. Walter Pauk 
of Cornell University in 1950.  The notes system has 2 columns divided 
proportionatly vertically down the page, as well as a small section at the bottom
of the page.  In the left hand column key work and questions are list related 
to the topic.  In the right hand side note are taken as per the user preference.
The small section at the bottom is an optional section for a summary of the 
notes.  The image below shows a sketch of the of the Cornell Note Taking system.

Cornell Notes: 
![alt text](https://miro.medium.com/max/500/0*TU8qeIqHMoxc9JAT.jpg 
"Cornell Notes")


## Description

To make the Cornell Note Taking system more efficient, the notes.rb terminal
application has been create.  The aim is to allow the user to input data 
directly into a CLI terminal to be stored for future study and review.

Some modifications are required from the original Cornell Notes:

1. The summary will not be included in notes.rb. This is due to its optionality 
of use and necessity.

2. The left hand column will primarily focuses on questions instead of key words.
Based on previous use, this has been the most important feature when reviewing
study notes.

3. The questions are specifically related to the corresponding note. This allows 
for quizzing functionality when reviewing the notes.

## Intended Use
notes.rb is designed to not required the use of paper, therefore not requiring
pages to be drawn up before hand, saving time and space.  It is primarily 
intended to be used in class room setting where writing, and laptop space is at 
a premium.  The intention is for the user to eliminate the need for paper based 
notes.


## Target Audience

notes.rb is primarily focused on the students or academics who are required to
quickly take notes and require a quick method of review later.    The quiz 
function allows for the user to self-assess before an important event.

Users may also find it useful to take notes of a non academic nature such as 
important dates or events. notes.rb will allow the notes based on the question
related to the important note (i.e. what is "such-n-such"'s birthday?) 

## Functionality

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
previous data being loaded into notes.rb


