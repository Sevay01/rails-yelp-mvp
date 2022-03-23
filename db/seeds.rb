# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
olivier = { name: "L'OLIVIER", address: "Route de la bastidonne, 84120 Pertuis", phone_number: "04 90 79 27 06", category: "french" }
noni =  { name: "Chez Noni", address: "ruelle Machin 84160 Lourmarin", phone_number: "04 90 79 26 06", category: "italian"   }
marcou =  { name: "Pizza Marcou", address: "route de la tour d'aigues, 84120 Pertuis", phone_number: "04 90 79 26 16", category: "italian"   }
neko =  { name: "Neko Sushi", address: "Boulevard des jardins, 84120 Pertuis", phone_number: "04 90 79 12 06", category: "japanese"   }
halong =  { name: "Baie d'Halong", address: "Centre ville, 84120  Pertuis", phone_number: "04 90 79 22 16", category: "chinese"   }

[ olivier, noni, marcou, neko, halong ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
