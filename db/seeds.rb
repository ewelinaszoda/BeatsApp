# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Festival.destroy_all
Performance.destroy_all
Band.destroy_all
Review.destroy_all
FestivalComment.destroy_all

50.times do User.create(username: Faker::Internet.email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

# :startDate => DateTime.parse("09/14/2009 8:00") 
# :startDate => DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M")

Festival.create([
                            { name: "Tomorrowland",
                             start_date: Date.parse('27/07/2021'),
                             end_date: Date.parse('29/07/2021'),
                             localization: "Boom, Belgium",
                             genre: "EDM",
                             description: "Tomorrowland is a Belgian electronic dance music festival held in Boom, Belgium. Tomorrowland was first held in 2005. It now stretches over two weekends and usually sells out in minutes.Pretty much every A-list DJ in the world came to Tomorrowland. Spectacular stages, truly phenomenal festival grounds and – last but not least – DreamVille, the camping grounds that really made you believe you’re inside a dream. During the sixth edition, 25,000 thousand people spent the night at DreamVille.",
                             like: 0, 
                            },

                             { name: "Creamfields",
                             start_date: Date.parse('25/05/2021'),
                             end_date: Date.parse('27/05/2021'),    
                             localization: "Daresbury, UK",
                             genre: "EDM",
                             description: "One of the most prestigious dance festivals on the planet! Creamfields is always full to bursting with worldwide stars. Whatever flavour of electronic music you're into, you'll find more than you could ask for at Creamfields.",
                             like: 0,
                            },

                             {name: "Rock am Ring & Rock im Park",
                             start_date:Date.parse('18/06/2021'),
                             end_date: Date.parse('21/06/2021'), 
                             localization:"Berlin, Germany",
                             genre: "Rock",
                             description: "If rock and metal are your game, then Germany's Rock am Ring needs no introduction. Along with sister festival Rock im Park, it pulls unparalleled lineups year after year and can lay claim to being one of the best-attended weekends in the world.",
                             like: 0, 
                            },

                             {name: "Coachella",
                             start_date: Date.parse('28/08/2021'),
                             end_date: Date.parse('30/08/2021'),    
                             localization: "Indio, California, US",
                             genre: "Pop",
                             description: "The Coachella Valley Music and Arts Festival (commonly called Coachella or the Coachella Festival) is an annual music and arts festival held at the Empire Polo Club in Indio, California, in the Coachella Valley in the Colorado Desert.",
                             like: 0, 
                             },

                             {name: "Glastonbury",
                             start_date: Date.parse('20/06/2021'),
                             end_date: Date.parse('22/06/2021'),     
                             localization: "Pilton, UK",
                             genre: "House",
                             description: "The clear standout from this list, Glastonbury sets the bar when it comes to worldwide music festivals. It hosts the biggest names in music on its famous Pyramid Stage, but it's the other side of Glastonbury that really sets it apart. ",
                             like: 0, 
                             },

                             {name: "All Points East", 
                             start_date: Date.parse('27/07/2021'),
                             end_date: Date.parse('29/07/2021'),  
                             localization: "London, UK",
                             genre: "Pop",
                             description: "The clear standout from this list, Glastonbury sets the bar when it comes to worldwide music festivals. It hosts the biggest names in music on its famous Pyramid Stage, but it's the other side of Glastonbury that really sets it apart. ",
                             like: 0,
                             }

])

30.times do Band.create(name: Faker::Music.band)
end

50.times do Review.create(user_id: User.all.sample.id, festival_id: Festival.all.sample.id, text: Faker::Lorem.sentences(number: 3))
end

30.times do Performance.create(festival_id: Festival.all.sample.id, band_id: Band.all.sample.id, stage: (1..10).to_a.sample)
end

50.times do FestivalComment.create(festival_id: Festival.all.sample.id, user_id: User.all.sample.id, text: Faker::Lorem.sentences(number: 1))
end 

puts "Successfully Seeded."