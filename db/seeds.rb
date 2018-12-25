# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

puts "Seeding Characters table"
csv_text = File.read(Rails.root.join('public', 'MVC2','final_list.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
   # puts row.to_hash
    c = Character.new
    c.name = row['name']
    c.head_shot = row['head_shot']
    c.universe = row['universe']

    c.save
     puts "#{c.name}, #{c.universe}, #{c.head_shot} saved"
end
puts "There are now #{Character.count} rows in the character table"

puts "Seeding Moves table"
csv_text_2 = File.read(Rails.root.join('public', 'MVC2','move_list.csv'))
csv_2 = CSV.parse(csv_text_2, :headers => true, :encoding => 'ISO-8859-1')
csv_2.each do |row|
   # puts row.to_hash
    m = Move.new
    m.character_name = row['name']
    m.move_name = row['move_name']
    m.image = "/images/Move_Images/#{row['name']}/#{m.move_name}.PNG"
    puts m.image

    m.save
     puts "#{m.character_name} #{m.move_name} saved"
end
puts "There are now #{Move.count} rows in the move table"

