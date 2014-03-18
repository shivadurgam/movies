# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
movie1 = Movie.create(name: 'AD', actor: 'Pawan Kalyan', actress: 'Samantha')
movie2 = Movie.create(name: 'SVSC', actor: 'Mahesh Babu', actress: 'Samantha')
movie3 = Movie.create(name: 'Yevadu', actor: 'R charan', actress: 'Kajal')

theatre1 = Theatre.create(theatre_name: 'Aradhana', place: 'Tarnaka', time: 11, movie_id: 2)
theatre2 = Theatre.create(theatre_name: 'Srinivasa', place: 'Uppal', time: 11, movie_id: 2)
theatre3 = Theatre.create(theatre_name: 'Sandhya', place: 'Rtc X roads', time: 11, movie_id: 1)
theatre4 = Theatre.create(theatre_name: 'Sudarshan', place: 'Rtc X roads', time: 11, movie_id: 3)
theatre5 = Theatre.create(theatre_name: 'Shanthi', place: 'Narayana guda', time: 11, movie_id: 3)
