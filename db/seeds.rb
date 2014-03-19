# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
movie1 = Movie.create(name: 'AD', actor: 'Pawan Kalyan', actress: 'Samantha', theatre_id: 3)
movie2 = Movie.create(name: 'SVSC', actor: 'Mahesh Babu', actress: 'Samantha', theatre_id: 2)
movie3 = Movie.create(name: 'Yevadu', actor: 'R charan', actress: 'Kajal', theatre_id: 4)
movie4 = Movie.create(name: 'One', actor: 'Mahesh Babu', actress: 'Kajol', theatre_id: 1)
movie5 = Movie.create(name: 'Laddu Babu', actor: 'A Naresh', actress: 'Anushka', theatre_id: 5)
movie6 = Movie.create(name: '300', actor: 'A Naresh', actress: 'Anushka', theatre_id: 4)
movie7 = Movie.create(name: 'SL Millionaire', actor: 'A Kapoor', actress: 'F Pinto', theatre_id: 5)

theatre1 = Theatre.create(theatre_name: 'Aradhana', place: 'Tarnaka', time: '11:15 AM, 2:15 PM, 6:15 PM, 9:15 PM	', movie_id: 4)
theatre2 = Theatre.create(theatre_name: 'Srinivasa', place: 'Uppal', time: '12:00 PM, 3:00 PM, 7:00 PM, 10:00 PM	', movie_id: 2)
theatre3 = Theatre.create(theatre_name: 'Sandhya', place: 'Rtc X roads', time: '11:00 AM, 2:00 PM, 6:00 PM, 9:00 PM	', movie_id: 1)
theatre4 = Theatre.create(theatre_name: 'Sudarshan', place: 'Rtc X roads', time: '11:00 AM, 2:00 PM, 6:00 PM, 9:00 PM	', movie_id: 3)
theatre5 = Theatre.create(theatre_name: 'Shanthi', place: 'Narayana guda', time: '11:00 AM, 2:00 PM, 6:00 PM, 9:00 PM	', movie_id: 5)
theatre6 = Theatre.create(theatre_name: 'Sri Krishna', place: 'Uppal', time: '12:00 PM, 3:00 PM, 7:00 PM, 10:00 PM	', movie_id: 2)
theatre7 = Theatre.create(theatre_name: 'Raj Lakshmi', place: 'Uppal', time: '12:00 PM, 3:00 PM, 7:00 PM, 10:00 PM	', movie_id: 2)
theatre8 = Theatre.create(theatre_name: 'Srinivasa', place: 'Tarnaka', time: '12:00 PM, 3:00 PM, 7:00 PM, 10:00 PM	', movie_id: 2)
