# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


usernames = ["gus", "brian", "dino", "chris"]

usernames.each do |username|
  user = User.create
  user.username = username
  user.email = "#{username}@example.com"
  user.password = "12341234"
  user.save
end

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'greenthumbseed_plant_table.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Plant.new
  t.name = row['name']
  t.description = row['description']
  t.official_name = row['official_name']
  t.height = row['height']
  t.width = row['width']
  t.warning = row['warning']
  t.save
  puts "#{@plant.name}, #{@plant.official_name} saved"
end

puts "There are now #{Plant.count} rows in the household plants table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'greenthumbseed_careinstructions.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Care.new
  t.name = row['name']
  t.tip = row['tip']
  t.light = row['light']
  t.temp_min = row['temp_min']
  t.temp_max = row['temp_max']
  t.warning = row['warning']
  t.save
  puts "#{@care.name} saved"
end

puts "There are now #{Care.count} rows in the household care instructionss table"
