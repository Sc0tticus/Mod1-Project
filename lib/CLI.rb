class Cli
    

    def welcome
        puts ""
        puts "Welcome to The FHL (The Flatiron Hockey League)!!!"
    end
    
    def would_you_like_to
        prompt = TTY::Prompt.new
        puts ""
        welcome_menu = prompt.select("Would you like too...") do |menu|
            menu.choice 'Get Team Information'
            menu.choice 'Get Player Information'
            menu.choice 'Join a Team'
            menu.choice 'Leave a Team'
            menu.choice 'Exit'
        end
        if welcome_menu == 'Get Team Information'
            team_information_menu
        elsif welcome_menu == 'Get Player Information'
            player_information_menu
        elsif welcome_menu == 'Join a Team'
            join_a_team_menu
        elsif welcome_menu == 'Leave a Team'
            leave_a_team_menu
        elsif welcome_menu == 'Exit'
            puts "CHECK YA LATER EH!"
        end
    end


    def team_information_menu
        puts ""
        prompt = TTY::Prompt.new
        puts 'Welcome to team information!'
        puts ""
        team_menu_choice = prompt.select("Please select your team") do |menu|
            menu.choice 'Boulder Blizzards'
            menu.choice 'Aurora Aces'
            menu.choice 'Colorado Springs Cave Dwellers'
            menu.choice 'Fort Collins Freakshow'
        end
        if team_menu_choice == 'Boulder Blizzards'
            puts ""
            puts "The Boulder Blizzards wipe out the competition!"
            puts ""
            team_stats = prompt.select('What do you wanna know hoser?') do |menu|
                menu.choice 'Where do we play?'
                menu.choice 'Whats our stadium called?'
                menu.choice 'What division are we in?'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Where do we play'
                where_do_we_play_method
            elsif team_stats == 'Whats our stadium called?'
                what_the_stadium
            elsif team_stats == "What division are we in?"
                teams_division
            elsif team_stats == 'Back to Main Menu'
                would_you_like_to
            end
        elsif team_menu_choice == 'Aurora Aces'
            puts ""
            puts "The Aurora Aces smoke the competition!"
            puts ""
            team_stats = prompt.select('What do you wanna know hoser?') do |menu|
                menu.choice 'Where do we play?'
                menu.choice 'Whats our stadium called?'
                menu.choice 'What division are we in?'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Where do we play'
                where_do_we_play_method
            elsif team_stats == 'Whats our stadium called?'
                what_the_stadium
            elsif team_stats == "What division are we in?"
                teams_division
            elsif team_stats == 'Back to Main Menu'
                would_you_like_to
            end
        elsif team_menu_choice == 'Colorado Springs Cave Dwellers'
            puts ""
            puts "The Colorado Springs Cave Dwellers leave the competition  in the dust!"
            puts ""
            team_stats = prompt.select('What do you wanna know hoser?') do |menu|
                menu.choice 'Where do we play?'
                menu.choice 'Whats our stadium called?'
                menu.choice 'What division are we in?'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Where do we play'
                where_do_we_play_method
            elsif team_stats == 'Whats our stadium called?'
                what_the_stadium
            elsif team_stats == "What division are we in?"
                teams_division
            elsif team_stats == 'Back to Main Menu'
                would_you_like_to
            end
        elsif team_menu_choice == 'Fort Collins Freakshow'
            puts ""
            puts "The Fort Collins Freakshow eat the competition alive!"
            puts ""
            team_stats = prompt.select('What do you wanna know hoser?') do |menu|
                menu.choice 'Where do we play?'
                menu.choice 'Whats our stadium called?'
                menu.choice 'What division are we in?'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Where do we play'
                where_do_we_play_method
            elsif team_stats == 'Whats our stadium called?'
                what_the_stadium
            elsif team_stats == "What division are we in?"
                teams_division
            elsif team_stats == 'Back to Main Menu'
                would_you_like_to
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
            puts ""
            puts "The Boulder Blizzards wipe out the competition!"
            puts ""
            team_stats = prompt.select('What do you wanna know hoser?') do |menu|
                menu.choice 'Top Players by PPG (points per game)'
                menu.choice 'Check out the whole team!'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Top Players by PPG (points per game)'
                top_players_method
            elsif team_stats == 'Check out the whole team!'
                all_players_method
            elsif team_stats == 'Back to Main Menu'
                would_you_like_to
            end
        elsif player_info_menu == 'Aurora Aces'
            puts ""
            puts "The Aurora Aces smoke the competition!"
            puts ""
            team_stats = prompt.select('What do you wanna know hoser?') do |menu|
                menu.choice 'Top Players by PPG (points per game)'
                menu.choice 'Check out the whole team!'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Top Players by PPG (points per game)'
                top_players_method
            elsif team_stats == 'Check out the whole team!'
                all_players_method
            elsif team_stats == 'Back to Main Menu'
                would_you_like_to
            end
        elsif player_info_menu == 'Colorado Springs Cave Dwellers'
            puts ""
            puts  "The Colorado Springs Cave Dwellers leave the competition  in the dust!"
            puts ""
            team_stats = prompt.select('What do you wanna know hoser?') do |menu|
                menu.choice 'Top Players by PPG (points per game)'
                menu.choice 'Check out the whole team!'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Top Players by PPG (points per game)'
                top_players_method
            elsif team_stats == 'Check out the whole team!'
                all_players_method
            elsif team_stats == 'Back to Main Menu'
                would_you_like_to
            end
        elsif player_info_menu == 'Fort Collins Freakshow'
            puts ""
            puts "The Fort Collins Freakshow eat the competition alive!"
            puts ""
            team_stats = prompt.select('What do you wanna know hoser?') do |menu|
                menu.choice 'Top Players by PPG (points per game)'
                menu.choice 'Check out the whole team!'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Top Players by PPG (points per game)'
                top_players_method
            elsif team_stats == 'Check out the whole team!'
                all_players_method
            elsif team_stats == 'Back to Main Menu'
                would_you_like_to
            end            
        end
    end

    def join_a_team_menu
        puts ""
        prompt = TTY::Prompt.new
        puts 'You think you have what it takes to skate with us?!'
        puts ""
        join_team_menu = prompt.select("Please select your team") do |menu|
            menu.choice 'Boulder Blizzards'
            menu.choice 'Aurora Aces'
            menu.choice 'Colorado Springs Cave Dwellers'
            menu.choice 'Fort Collins Freakshow'
        end
        if join_team_menu == 'Boulder Blizzards'
            puts ""
            puts 'You think you want to be a Blizzard?!'
            puts ""
            puts 'What is your name skater?'
        elsif join_team_menu == 'Aurora Aces'
            puts ""
            puts 'You think you want to be one of the Aces?!'
            puts ""
            puts 'What is your name skater?'
        elsif join_a_team_menu == 'Colorado Springs Cave Dwellers'
            puts ""
            puts 'You think you want to be a Cave Dweller?!'
            puts ""
            puts 'What is your name skater?'
        elsif join_a_team_menu == 'Fort Collins Freakshow'
            puts ""
            puts 'You think you want to be a Blizzard?!'
            puts ""
            puts 'What is your name skater?'
        end
    end

    def leave_a_team_menu
        puts ""
        puts 'You just couldnt cut it could you?'
        puts ""
        puts 'What is your name skater?'
    end

    def where_do_we_play_method(team)
    end

    
    def what_the_stadium(team)
    end

    def teams_division(team)
    end
    
    
    def top_players_method(team)
    end

    def all_players_method(team)
    end




end



