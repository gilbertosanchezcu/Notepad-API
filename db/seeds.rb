# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Destroying Notes"

Note.destroy_all

puts "Creating Notes"

notes = [
    {
        username: "all_star",
        message: "great project! learning algorithms just got fun!",
    },
    {
        username: "sun_dance1990",
        message: "i really like adding cats on the grid! it is cool to see the mouse evade the cats"
    },
    {
        username: "cheetahBeat123",
        message: "the maze animation is fun to look at"
    },
    {
        username: "notPatriiickStarrr",
        message: "the automatic recomputation of new paths is very useful to compare the different algorithms"
    }
]

notes.each do |note|
    Note.create!(note)
end