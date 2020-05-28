class Cli
    

    def welcome
        puts "Welcome to The FIHL (The Flat Iron Hockey League)!!!".colorize(:blue)
        puts "".colorize(:black)
        puts "
        888                     888                      
        888                     888                      
        888                     888                      
        88888b.  .d88b.  .d8888b888  888 .d88b. 888  888 
        888 `88bd88``88bd88P`   888 .88Pd8P  Y8b888  888 
        888  888888  888888     888888K 88888888888  888 
        888  888Y88..88PY88b.   888 `88bY8b.    Y88b 888 
        888  888 `Y88P`  `Y8888P888  888 `Y8888  `Y88888 
                                                     888 
                                                Y8b d88P 
                                                 `Y88P`  
                    ||||||
                   /      \             
                  | o   o |
                  |   o   |
                  | |___| |
                  \_______/
                _____| |______
               |              |
               |  |        |  |
               |  |        |  |      //
               |  |        |  |     //
               |  |========|  |======
                \__/        \__/
                  |        |
                  |   ||   |
                  |   ||   |
                  |   ||   |
                  ##  ||  ##
               ___|#  ||  #|____
               |  #   ||   #   |
               |______||_______|
               |_|_|__||_|_|_|_|
        ".colorize(:cyan)
        puts ""
    end
    
    def would_you_like_to
        prompt = TTY::Prompt.new(active_color: :cyan, symbols: {marker: '(*)'})
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
        prompt = TTY::Prompt.new(active_color: :cyan, symbols: {marker: '(*)'})
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
                where_do_we_play_method(team2)
                welcome_menu
            elsif team_stats == 'Whats our stadium called?'
                what_the_stadium(team2)
            elsif team_stats == "What division are we in?"
                teams_division(team2)
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
                where_do_we_play_method(team1)
            elsif team_stats == 'Whats our stadium called?'
                what_the_stadium(team1)
            elsif team_stats == "What division are we in?"
                teams_division(team1)
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
                where_do_we_play_method(team3)
            elsif team_stats == 'Whats our stadium called?'
                what_the_stadium(team3)
            elsif team_stats == "What division are we in?"
                teams_division(team3)
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
                where_do_we_play_method(team4)
            elsif team_stats == 'Whats our stadium called?'
                what_the_stadium(team4)
            elsif team_stats == "What division are we in?"
                teams_division(team4)
            elsif team_stats == 'Back to Main Menu'
                would_you_like_to
            end
        end
    end
        
    def player_information_menu
        prompt = TTY::Prompt.new(active_color: :cyan, symbols: {marker: '(*)'})
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
                top_players_method(team2)
            elsif team_stats == 'Check out the whole team!'
                all_players_method(team2)
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
                top_players_method(team1)
            elsif team_stats == 'Check out the whole team!'
                all_players_method(team1)
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
                top_players_method(team3)
            elsif team_stats == 'Check out the whole team!'
                all_players_method(team3)
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
                top_players_method(team4)
            elsif team_stats == 'Check out the whole team!'
                all_players_method(team4)
            elsif team_stats == 'Back to Main Menu'
                would_you_like_to
            end            
        end
    end

    def join_a_team_menu
        puts ""
        prompt = TTY::Prompt.new(active_color: :cyan, symbols: {marker: '(*)'})
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
            prompt.collect do 
                key(:name).ask('What is your name skater?')
                key(:age).ask('How old are you?')
                key(:position).ask('What postion do you play?')
            end
            # Player.new(name: '#{name}', age: '#{age}')
        elsif join_team_menu == 'Aurora Aces'
            puts ""
            puts 'You think you want to be one of the Aces?!'
            puts ""
            prompt.collect do 
                key(:name).ask('What is your name skater?')
                key(:age).ask('How old are you?')
                key(:position).ask('What postion do you play?')
            end
        elsif join_team_menu == 'Colorado Springs Cave Dwellers'
            puts ""
            puts 'You think you want to be a Cave Dweller?!'
            puts ""
            prompt.collect do
                key(:name).ask('What is your name skater?')
                key(:age).ask('How old are you?')
                key(:position).ask('What postion do you play?')
            end
        elsif join_team_menu == 'Fort Collins Freakshow'
            puts ""
            puts 'You think you want to be a Freakshow?!'
            puts ""
            prompt.collect do 
                key(:name).ask('What is your name skater?')
                key(:age).ask('How old are you?')
                key(:position).ask('What postion do you play?')
            end
        end
    end

    def leave_a_team_menu
        prompt = TTY::Prompt.new(active_color: :cyan, symbols: {marker: '(*)'})
        puts ""
        puts 'You just couldnt cut it could you?'
        puts ""
        prompt.collect do 
            key(:name).ask('What is your name skater?')
        end
        puts ""
        prompt.yes?('Are you sure you want to hang up the skates?')
        puts ""
        puts '#{:name}, you have been removed from your team.'
        would_you_like_to
    end

    def where_do_we_play_method(team)
        team.location
    end

    
    def what_the_stadium(team)
        team.stadium
    end

    def teams_division(team)
        team.division
    end
    
    
    def top_players_method(team)
    end

    def all_players_method(team)
        team.players.all
    end






end



