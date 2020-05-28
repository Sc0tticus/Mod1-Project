class Cli
    

    def welcome
        puts "Welcome to The FIHL (The Flat Iron Hockey League)"
    end
    
    def would_you_like_to
        prompt = TTY::Prompt.new
        welcome_menu = prompt.select("Would you like too...") do |menu|
            menu.choice 'Get Team Information'
            menu.choice 'Get Player Information'
            menu.choice 'Join a Team'
            menu.choice 'Exit'
        end
        if welcome_menu == 'Get Team Information'
            team_information_menu
        elsif welcome_menu == 'Get Player Information'
            get_player_information_menu
        elsif welcome_menu == 'Join a Team'
            join_a_team_menu
        elsif welcome_menu == 'Exit'
            puts "CHECK YA LATER!"
        end
    end


    def team_information_menu
        prompt = TTY::Prompt.new
        puts 'Welcome to team information!'
        team_info_menu = prompt.select("Please select your team") do |menu|
            menu.choice 'Boulder Blizzards'
            menu.choice 'Aurora Aces'
            menu.choice 'Colorado Springs Cave Dwellers'
            menu.choice 'Fort Collins Freakshow'
        end

    end
        

    


end



