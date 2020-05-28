class Cli
    

    def welcome
        puts "Welcome to The FIHL (The Flat Iron Hockey League)!!!"
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
            player_information_menu
        elsif welcome_menu == 'Join a Team'
            join_a_team_menu
        elsif welcome_menu == 'Exit'
            puts "CHECK YA LATER EH!"
        end
    end


    def team_information_menu
        prompt = TTY::Prompt.new
        puts 'Welcome to team information!'
        team_menu_choice = prompt.select("Please select your team") do |menu|
            menu.choice 'Boulder Blizzards'
            menu.choice 'Aurora Aces'
            menu.choice 'Colorado Springs Cave Dwellers'
            menu.choice 'Fort Collins Freakshow'
        end
        if team_menu_choice == 'Boulder Blizzards'
            puts "The Boulder Blizzards wipe out the competition!"
            team_stats = prompt.select('What do you wanna know hoosier?') do |menu|
                menu.choice 'Where do we play?'
                menu.choice 'Whats our stadium called?'
                menu.choice 'What division are we in?'
            end
        end

    end
        
    def player_information_menu
        prompt = TTY::Prompt.new
        puts 'Welcome to player information!'
        player_info_menu = prompt.select("Please select your team") do |menu|
            menu.choice 'Boulder Blizzards'
            menu.choice 'Aurora Aces'
            menu.choice 'Colorado Springs Cave Dwellers'
            menu.choice 'Fort Collins Freakshow'
        end
        if player_info_menu == 'Boulder Blizzards'
            puts "The Boulder Blizzards wipe out the competition!"
            team_stats = prompt.select('What do you wanna know hoosier?') do |menu|
                menu.choice 'Top Players by PPG (points per game)'
                menu.choice 'Check out the whole team!'
                menu.choice 'Who is the oldest?'
                menu.choice 'Who is the youngest?'
            end
        end
    end

    def join_a_team_menu
        prompt = TTY::Prompt.new
        puts 'You think you have what it takes to skate with us?!'
        join_team_menu = prompt.select("Please select your team") do |menu|
            menu.choice 'Boulder Blizzards'
            menu.choice 'Aurora Aces'
            menu.choice 'Colorado Springs Cave Dwellers'
            menu.choice 'Fort Collins Freakshow'
        end
    
    end


end



