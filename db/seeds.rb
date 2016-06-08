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

  # require 'csv'
  #
  # csv_text = File.read(Rails.root.join('lib', 'seeds', 'greenthumbseed.csv'))
  # csv = CSV.parse(csv_text, :headers => true, :encoding => 'iso-8859-1:UTF-8')
  # csv.each do |row|
  #   puts row.to_hash
  # end

  # CSV.foreach(file_path, :headers => true, :encoding => "iso-8859-1:UTF-8") do |row|
  #   puts row
  # end
end
