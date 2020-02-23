# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubygems'
require 'readability'
require 'open-uri'
require 'faker'

source = open('https://www.m-standard.co.jp/').read
image = open('https://www.m-standard.co.jp/rent/%E3%82%B3%E3%83%B3%E3%83%95%E3%82%A9%E3%83%AA%E3%82%A2%E6%96%B0%E5%AE%BF%E3%82%A4%E3%83%BC%E3%82%B9%E3%83%88%E3%82%B5%E3%82%A4%E3%83%89%E3%82%BF%E3%83%AF%E3%83%BC/').read

list_image_building = Readability::Document.new(source).prepare_candidates[:elem].xpath('//img').map{ |t| t[:'data-src'] }.select{|x| x != nil}
list_image_room = Readability::Document.new(image).prepare_candidates[:elem].xpath('//img').map{ |t| t[:'data-src'] }.select{|x| x != nil && x.include?("https")}

7.times.each do |x|
  Building.create!(image: list_image_building[x],
                   description: "To Be Define",
                   location: Faker::Address.full_address,
                   build_year: rand(1994..2020),
                   equipments: ["fridge", "table", "chair"],
                   floor_number: rand(2..30)
                  )
  
end

Building.all.pluck(:floor_number).each do |x|
  building = 1
  x.times.each do |create|
    Floor.create!(num_of_floor: create + 1,
                  building_id: building)
    
  end
  5.times.each do |create|
    Room.create!(rentail_fee: rand(1994..11020),
                 manager_fee: rand(1994..32213),
                 size: rand(45.2...726.9),
                 images: list_image_room,
                 floor_id: rand(1..x),
                 building_id: building)
  end
  building += 1
end



