require 'pp'

# Require the Ruby file
#
# Print out the unit names with the comment counts
#
# Expected output
#
#   Orientation - 9
#   Rails Basics - 15
#   CRUD - 12

require_relative 'curriculum'
CURRICULUM[:units].each do |unit|
    count = 0
  unit[:lessons].each do |lesson|
    lesson[:occurrences].each do |occurrence_key, occurrence_val|
      occurrence_val[:comments].each do |comment|
        count += 1
      end
    end
  end
  puts "  #{unit[:name]} - #{count}"
end
