require 'pp'

# Require the Ruby file
#
# Print out the names of all the commenters
#
# Expected output
#
#   Julia Hilll
#   Price Bayer
#   Jake Hyatt
#   Lafayette Little
#   Kelvin Howell
#   Duane Tillman
#   Jake Hyatt
#   Lafayette Little
#   Duane Tillman
#   Miss Hadley Mueller
#   Price Bayer
#   Vicente Bashirian
#   Jake Hyatt
#   Julia Hilll
#   Lafayette Little
#   Eloy Reichert
#   Aiyana Fritsch
#   Aurelio Abbott
#   Jake Hyatt
#   Jules Herzog
#   Julia Hilll
#   etc...

require_relative 'curriculum'
CURRICULUM[:units].each do |unit|
  unit[:lessons].each do |lesson|
    lesson[:occurrences].each do |occurrence_key, occurrence_val|
      occurrence_val[:comments].each do |comment|
        puts comment[:user][:name]
      end
    end
  end
end
