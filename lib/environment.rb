require_relative "./hudson_valley_hikes/version"
require_relative "./hudson_valley_hikes/cli"
require_relative "./hudson_valley_hikes/hike"
require_relative "./hudson_valley_hikes/scraper"


require 'pry'
require 'nokogiri'
require 'open-uri'

module HudsonValleyHikes
  class Error < StandardError; end
  # Your code goes here...
end
