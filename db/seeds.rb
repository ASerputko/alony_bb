# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Home.create!(title: "Marketing stuff!", description: "Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.")

Project.create!(name: "WGen", description: "bla-bla-bla", year: 2011)
Project.create!(name: "Homeaway", description: "bla-bla-bla", year: 2012)
Project.create!(name: "Coupa", description: "bla-bla-bla", year: 2013)
Project.create!(name: "?!?", description: "bla-bla-bla", year: 2014)