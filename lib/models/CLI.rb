require 'pry'
class Cli 
    
    attr_accessor :user

    Prompt = TTY::Prompt.new

    def welcome
        puts ""
        puts ""
        puts "Welcome to The FHL (The Flatiron Hockey League)!!!".colorize(:blue)
        puts "".colorize(:black)
        puts "
        888                       888                      
        888                       888                      
        888                       888                      
        88888b.  .d88b.  .d8888b  888  888  .d88b.    888  888 
        888 `88b d88``88 bd88P`   888 .88P d8P  Y8b   888  888 
        888  888 888  88 8888     888888K  88888888   888  888 
        888  888 Y88..88 PY88b.   888 `88b  Y8b.      Y88b 888 
        888  888 `Y88P`  `Y8888P8 888  88`Y  88888'    Y88888 
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
        create_name
    end
    
    def create_name
        puts ""
        puts "What's your first name?"
        puts ""
        a_new_username = gets.strip
        @user = User.new(a_new_username)
        #new_user = User.new( username: a_new_username)
    end

    def would_you_like_to
        prompt = TTY::Prompt.new(active_color: :cyan, symbols: {marker: '(*)'})
        puts ""
        welcome_menu = prompt.select("Hi, #{@user.name}! Here in the Flatiron Hockey League app you can......") do |menu|
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
            puts ""
            puts "CHECK YA LATER EH!?"
            puts ""
        end
    end
    def what_else
        prompt = TTY::Prompt.new(active_color: :cyan, symbols: {marker: '(*)'})
        puts ""
        welcome_menu = prompt.select("Hi, #{@user.name}! What else would you like to know about the FHL......?") do |menu|
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
            puts ""
            puts "CHECK YA LATER EH!?"
            puts ""
        end
    end

    def team_information_menu
        puts ""
        prompt = TTY::Prompt.new(active_color: :cyan, symbols: {marker: '(*)'})
        puts "Welcome, #{@user.name} to team information!"
        puts ""
        team_menu_choice = prompt.select("#{@user.name}, please select your team") do |menu|
            menu.choice 'Boulder Blizzards'
            menu.choice 'Aurora Aces'
            menu.choice 'Colorado Springs Cave Dwellers'
            menu.choice 'Fort Collins Freakshow'
        end
        if team_menu_choice == 'Boulder Blizzards'
            puts ""
            puts "The Boulder Blizzards wipe out the competition!"
            puts ""
            team_stats = prompt.select("#{@user.name}, what do you wanna know you hoser?") do |menu|
                menu.choice 'Where do we play?'
                menu.choice 'Whats our stadium called?'
                menu.choice 'What division are we in?'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Where do we play?'
                puts ""
                puts where_do_we_play_method(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Whats our stadium called?'
                puts ""
                puts what_the_stadium(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == "What division are we in?"
                puts ""
                puts teams_division(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Back to Main Menu'
                what_else
            end
        elsif team_menu_choice == 'Aurora Aces'
            puts ""
            puts "The Aurora Aces smoke the competition!"
            puts ""
            team_stats = prompt.select("#{@user.name}! What do you wanna know you hoser?") do |menu|
                menu.choice 'Where do we play?'
                menu.choice 'Whats our stadium called?'
                menu.choice 'What division are we in?'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Where do we play?'
                puts ""
                puts where_do_we_play_method(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Whats our stadium called?'
                puts ""
                puts what_the_stadium(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == "What division are we in?"
                puts ""
                puts teams_division(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Back to Main Menu'
                what_else
            end
        elsif team_menu_choice == 'Colorado Springs Cave Dwellers'
            puts ""
            puts "The Colorado Springs Cave Dwellers leave the competition  in the dust!"
            puts ""
            team_stats = prompt.select("#{@user.name}! What do you wanna know hoser?") do |menu|
                menu.choice 'Where do we play?'
                menu.choice 'Whats our stadium called?'
                menu.choice 'What division are we in?'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Where do we play?'
                puts ""
                puts where_do_we_play_method(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Whats our stadium called?'
                puts ""
                puts what_the_stadium(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == "What division are we in?"
                puts ""
                puts teams_division(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Back to Main Menu'
                what_else
            end
        elsif team_menu_choice == 'Fort Collins Freakshow'
            puts ""
            puts "The Fort Collins Freakshow eat the competition alive!"
            puts ""
            team_stats = prompt.select("#{@user.name}! What do you wanna know you hoser?") do |menu|
                menu.choice 'Where do we play?'
                menu.choice 'Whats our stadium called?'
                menu.choice 'What division are we in?'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Where do we play?'
                puts ""
                puts where_do_we_play_method(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Whats our stadium called?'
                puts ""
                puts what_the_stadium(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == "What division are we in?"
                puts ""
                puts teams_division(team_menu_choice).colorize(:cyan)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Back to Main Menu'
                what_else
            end
        end
    end
        
    def player_information_menu
        puts ""
        prompt = TTY::Prompt.new(active_color: :cyan, symbols: {marker: '(*)'})
        puts 'Welcome to player information!'
        puts ""
        player_info_menu = prompt.select("#{@user.name}. Please select your team") do |menu|
            menu.choice 'Boulder Blizzards'
            menu.choice 'Aurora Aces'
            menu.choice 'Colorado Springs Cave Dwellers'
            menu.choice 'Fort Collins Freakshow'
        end
        if player_info_menu == 'Boulder Blizzards'
            puts ""
            puts "The Boulder Blizzards wipe out the competition!"
            puts ""
            team_stats = prompt.select("#{@user.name}! What do you wanna know you hoser?") do |menu|
                menu.choice 'Top Players by PPG (points per game)'
                menu.choice 'Check out the whole team!'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Top Players by PPG (points per game)'
                puts ""
                puts top_players_method(player_info_menu)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Check out the whole team!'
                puts ""
                puts all_players_method_bb(player_info_menu)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Back to Main Menu'
                what_else
            end
        elsif player_info_menu == 'Aurora Aces'
            puts ""
            puts "The Aurora Aces smoke the competition!"
            puts ""
            team_stats = prompt.select("#{@user.name}! What do you wanna know you hoser?") do |menu|
                menu.choice 'Top Players by PPG (points per game)'
                menu.choice 'Check out the whole team!'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Top Players by PPG (points per game)'
                puts ""
                puts top_players_method_aa(player_info_menu)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Check out the whole team!'
                puts ""
                puts all_players_method_aa(player_info_menu)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Back to Main Menu'
                what_else
            end
        elsif player_info_menu == 'Colorado Springs Cave Dwellers'
            puts ""
            puts  "The Colorado Springs Cave Dwellers leave the competition  in the dust!"
            puts ""
            team_stats = prompt.select("#{@user.name}! What do you wanna know you hoser?") do |menu|
                menu.choice 'Top Players by PPG (points per game)'
                menu.choice 'Check out the whole team!'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Top Players by PPG (points per game)'
                puts ""
                puts top_players_method(player_info_menu)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Check out the whole team!'
                puts ""
                puts all_players_method_cs(player_info_menu)
            elsif team_stats == 'Back to Main Menu'
                what_else
            end
        elsif player_info_menu == 'Fort Collins Freakshow'
            puts ""
            puts "The Fort Collins Freakshow eat the competition alive!"
            puts ""
            team_stats = prompt.select("#{@user.name}! What do you wanna know you hoser?") do |menu|
                menu.choice 'Top Players by PPG (points per game)'
                menu.choice 'Check out the whole team!'
                menu.choice 'Back to Main Menu'
            end
            if team_stats == 'Top Players by PPG (points per game)'
                puts ""
                puts top_players_method(player_info_menu)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Check out the whole team!'
                puts ""
                puts all_players_method_fc(player_info_menu)
                puts ""
                puts 'What is next?'
                what_else
            elsif team_stats == 'Back to Main Menu'
                what_else
            end            
        end
    end

    def join_a_team_menu
        puts ""
        prompt = TTY::Prompt.new(active_color: :cyan, symbols: {marker: '(*)'})
        puts 'You think you have what it takes to skate with us?!'
        puts ""
        join_team_menu = prompt.select("#{@user.name}! Please select your team") do |menu|
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
                key(:name).ask('What is your full name skater?')
                key(:age).ask('How old are you?')
                key(:position).ask('What postion do you play?')
                end
                puts ""
                puts "Welcome to the Boulder Blizzards #{@user.name}, see you at practice!"
                puts ""
                puts 'What is next?'
                what_else
            # Player.new(name: '#{name}', age: '#{age}')
        elsif join_team_menu == 'Aurora Aces'
            puts ""
            puts 'You think you want to be one of the Aces?!'
            puts ""
            prompt.collect do 
                key(:name).ask('What is your full name skater?')
                key(:age).ask('How old are you?')
                key(:position).ask('What postion do you play?')
            end
            puts ""
                puts "Welcome to the Aurora Aces #{@user.name}, see you at practice!"
                puts ""
                puts 'What is next?'
                what_else
        elsif join_team_menu == 'Colorado Springs Cave Dwellers'
            puts ""
            puts 'You think you want to be a Cave Dweller?!'
            puts ""
            prompt.collect do
                key(:name).ask('What is your full name skater?')
                key(:age).ask('How old are you?')
                key(:position).ask('What postion do you play?')
            end
            puts ""
                puts "Welcome to the Colorado Springs Cave Dwellers #{@user.name}, see you at practice!"
                puts ""
                puts 'What is next?'
                what_else
        elsif join_team_menu == 'Fort Collins Freakshow'
            puts ""
            puts 'You think you want to be a Freakshow?!'
            puts ""
            prompt.collect do 
                key(:name).ask('What is your full name skater?')
                key(:age).ask('How old are you?')
                key(:position).ask('What postion do you play?')
            end
            puts ""
                puts "Welcome to the Fort Collins Freakshow #{@user.name}, see you at practice!"
                puts ""
                puts 'What is next?'
                what_else
        end
    end

    def leave_a_team_menu
        prompt = TTY::Prompt.new(active_color: :cyan, symbols: {marker: '(*)'})
        puts ""
        puts 'You just couldnt cut it could you?'
        puts ""
        prompt.collect do 
            key(:name).ask('What is your full name skater?')
        end
        # puts ""
        # puts remove_from_team(:name)
        puts ""
        prompt.yes?('Are you sure you want to hang up the skates?')
        puts ""
        puts 'Later chicken legs! You have been removed from your team.'
        what_else
    end

    def where_do_we_play_method(team_menu_choice)
        Team.all.find{|team| team.team_name == team_menu_choice}.location
    end
    
    
    def what_the_stadium(team_menu_choice)
        Team.all.find{|team| team.team_name == team_menu_choice}.stadium
    end

    def teams_division(team_menu_choice)
        Team.all.find{|team| team.team_name == team_menu_choice}.division
    end
    
    def find_team_from_name(player_info_menu)
        #returns unique team id based on input team string
        Team.all.find do |team|
            team.team_name == player_info_menu
        end
    end

    def players_from_team(player_info_menu)
        #returns an array of all players that belond to a specific team (id)
        team_id = find_team_from_name(player_info_menu).id
       Player.where("team_id = #{team_id}")
    end


    def all_players_method(player_info_menu)
        #returns an array of all players
        players_from_team(player_info_menu).map do |player|
            player.name
        end
    end

    
    def top_players_method(player_info_menu)
        #binding.pry
        Player.all.select do |player|
            if player_info_menu == Player.team
            end
        end
    end

    def coaches_from_team(player_info_menu)
        #returns an array of all players that belond to a specific team (id)
        #binding.pry
        team_id = find_team_from_name(player_info_menu).id
       practice = Coach.where("team_id = #{team_id}")
       binding.pry
    end

end



