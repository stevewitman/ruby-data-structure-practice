require 'pp'

# Require json and parse the json file
#
# Print out the lesson names with the total number of comments
#
# Expected output
#
#   Orientation
#     Name Games - 3
#     Mind Maps - 4
#     Sequence Diagrams - 2
#   Rails Basics
#     Controllers - 5
#     Models - 0
#     Views - 8
#     Migrations - 2
#   CRUD
#     Create - 3
#     Read - 1
#     Update - 6
#     Delete - 2

require_relative 'curriculum'
CURRICULUM[:units].each do |unit|
  puts "  #{unit[:name]}"
  unit[:lessons].each do |lesson|
    count = 0
    lesson[:occurrences].each do |occurrence_key, occurrence_val|
      occurrence_val[:comments].each do |comment|
        count += 1
      end
    end
    puts "    #{lesson[:name]} - #{count}"
  end
end
