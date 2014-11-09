# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

blogposts = Blogpost.create([{title: "entry one", camera: "nikon", desc: "a photo I took"},{title: "entry two", camera: "canon", desc: "another photo I took"}])