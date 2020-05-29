Flatiron School Hockey League (FHL)


This is a CLI application that allows new or returning users to find out information about a fictitious hockey league (the FHL) that is comprised of players and coaches that are real-life students or instructors in our current cohort. Users have the ability to learn everything there is to know about the FHL including specifics about teams, players, and coaches. User can add or remove themselves from the FHL team of their choice.

Motivation

We love the sport of hockey and decided to incorporate our love for this game into this repo which serves as the final project for our first "Module" in Flatiron School's Immersive Software Engineering Bootcamp in Denver.


Built Using

Ruby 2.7.0/ Active Record 6.0 - on Mac OS Catalina / sqlite3 1.4 /  Sinatra 2.0



How to use/open

Fork and clone this repository, open in a code editor.

From the root directory of this project, in the terminal, use command:
bundle install

While still in the root directory, to create local database tables use rake command:
rake db:migrate

Then, to upate any of the FHL info go to the seeds.rb file, to update this file with new content use rake command:
rake db:seed

Finally, start the app with this command:
ruby runner.rb

You should now see the welcome message to the FHL.
(First type in your name to be added into the FHL.)

Instructions / Walkthrough

If new user, type the desired username and hit return/enter.
For each menu that appears in the app, use the 'up' and 'down' keys to highlight an option, and then press return/enter to make a choice.

Main Menu 

Get Team Information

This option takes the user to a menu that allows them to choose which FHL team they would like to learn more about. After choosing a FHL the use has options to learn about where the team plays, what stadium the team plays in, the division the team is in, and who the team's coach is.

Get Player Information

This option allows the user to learn which player on a chosen team scores the most points for that team. The user can also learn about which players are on the selected FHL team.

Join a Team

This option allows the user to join a FHL team by selecting the team they want to play for and then entering in their name, age, and desired hockey position.

Leave a Team

This option allows the user to leave a FHL team when they are ready to retire and hang up their skates.

Exit

This last option exits the application and returns you to your terminal's shell.

Youtube Demo Link

Youtube link to a screen recording of the app! (Link here)

Final Comments

Thank you for opening and trying out the current version of the Flatiron Hockey League Cli app! Please understand this is our first ever programming project using any kind of code language and it may seem primitive at best. We will continue striving to improve the app and would love constructive feedback from all who have tested out the app!


Creators/Collaborators
Austin Evans - https://github.com/Austin-Vincelli-Evans
Scott Singer - https://github.com/Sc0tticus

Credits
Thank you to https://www.asciiart.eu/sports-and-outdoors/ice-hockey for supplying the hockey ASCII art!

