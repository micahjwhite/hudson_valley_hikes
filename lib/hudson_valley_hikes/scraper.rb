class HudsonValleyHikes::Scraper

    def self.hudson_valley_hikes
        puts "********** Finding you the top hikes! **********"
        doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Attractions-g2663029-Activities-c61-t87-Hudson_River_Valley_New_York.html"))
        hikes = doc.css("div.listing")
        hikes.each do |hike|
            name = hike.css("h2").text
            location = hike.css("var.parent-name-and-distance span").text.gsub(/\d.*$/, "")
            number_of_reviews = hike.css("span.more a").text.strip
            reviews = hike.css("div.review_snippet").text.gsub('.”“', '.” “')
        HudsonValleyHikes::Hike.new(name, location, number_of_reviews, reviews) 
        end
    end
end