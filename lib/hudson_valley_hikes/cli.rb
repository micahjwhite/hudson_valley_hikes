require 'pry'

class HudsonValleyHikes::CLI
    
    attr_accessor 
    
    def call
        render_ascii_art
        greet_user
        get_user_interest
        HudsonValleyHikes::Scraper.hudson_valley_hikes
        list_hikes
        select_hike
        select_another_hike
        goodbye

    end

    def render_ascii_art
        banner = File.read("./lib/hudson_valley_hikes/art.txt")
        puts ""
        puts banner
        puts ""
    end

    def greet_user
        puts "\nWelcome to Hudson Valley Hikes! Are you interested in taking a hike today?"
        puts "\nEnter 'y' to see the region's top hiking spots, or enter 'e' to exit."
    end

    def get_user_interest
        # input = String.new
        # until input == "y"
        #     input = gets.strip.downcase
        # end
        # case
        # when input == "y"
        #     list_hikes
        # when input == "n"
        #     goodbye
        input = gets.strip.downcase 
        if input == "y" || input == "yes" 
            list_hikes
        elsif input == "e" || input == "exit" 
            goodbye
        else
            puts "Sorry, I didn't understand that. Please enter 'y' for yes or 'e' for exit."
            get_user_interest
        end
    end

    def list_hikes
        puts ""
        HudsonValleyHikes::Hike.all.each.with_index(1) do |hike, index|
            puts "#{index}. #{hike.name}"
        end
    end

    def select_hike
        puts "\nIf you'd like to know more about one of these hikes, please enter a number. If you'd rather not, enter 'e' to exit the program."
        input = gets.strip
        until input.to_i.between?(1, HudsonValleyHikes::Hike.all.length)
            if input == "e" || input == "exit"
                goodbye
            else
                puts "Sorry, I don't understand."
                select_hike
            end
        end
        index = input.to_i - 1
        hikes = HudsonValleyHikes::Hike.all
        if hikes[index].reviews == ""
            puts "\nName: #{hikes[index].name}\n\nLocation: #{hikes[index].location}\n\nNumber of Reviews: #{hikes[index].number_of_reviews}"
        else
            puts "\nName: #{hikes[index].name}\n\nLocation: #{hikes[index].location}\n\nNumber of Reviews: #{hikes[index].number_of_reviews}\n\nWhat Hikers Say:#{hikes[index].reviews}" 
        end
        select_another_hike
    end

    def select_another_hike
        puts "\nWould you like to see the list of the Hudson Valley's top hikes again? Enter 'y' for yes or 'e' to exit."
        input = gets.strip
        case 
        when input == "y" || input == "Y" || input == "yes" || input == "YES"
            list_hikes
            select_hike
        when input == "e" || input == "E" || input == "exit" || input = "EXIT"
            goodbye
        end
    end

    def goodbye
        puts "Thanks for visiting Hudson Valley Hikes!"
        exit!
    end
end
