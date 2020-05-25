# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

30.times do User.create(username: Faker::Internet.email, Faker::FunnyName. first_name: Faker::FunnyName.first_name, last_name: Faker::FunnyName.last_name)
end

30.times do Festival.create([ 
                            { name: "Tomorrowland   "  
                             start_date: 2021-07-27
                             finish_date: 2021-07-29
                             localization: "Boom, Belgium"
                             genre: "EDM"
                             description: "Tomorrowland is a Belgian electronic dance music festival held in Boom, Belgium. Tomorrowland was first held in 2005. It now stretches over two weekends and usually sells out in minutes.Pretty much every A-list DJ in the world came to Tomorrowland. Spectacular stages, truly phenomenal festival grounds and – last but not least – DreamVille, the camping grounds that really made you believe you’re inside a dream. During the sixth edition, 25,000 thousand people spent the night at DreamVille."
                             attachment: 
                             like: 0  
                            },

                             { name: "   " 
                             date:       
                             localization:
                             genre: 
                             description:
                             like: 0  
                            },

                             {name: "   " 
                             date:       
                             localization:
                             description:
                             like: 0  
                            },

                             {name: "   " 
                             date:       
                             localization:
                             description:
                             like: 0  
                             },

                             {name: "   " 
                             date:       
                             localization:
                             description:
                             like: 0  
                             },

                             {name: "   " 
                             date:       
                             localization:
                             description:
                             like: 0  
                             },

                             {name: "   " 
                             date:       
                             localization:
                             description:
                             like: 0  
                             },

                             {name: "   " 
                             date:       
                             localization:
                             description:
                             like: 0  
                             },

                             {name: "   " 
                             date:       
                             localization:
                             description:
                             like: 0  
                             }
])
end

30.times do Review.create(user_id: User.all.sample.id, festival_id: Festival.all.sample.id, text: Faker::Lorem.sentences(number: 3))
end

30.times do Band.create(name: Faker::Music.band)
end

30.times do Performance.create(festival_id: Festival.all.sample.id, band_id: Band.all.sample.id, stage: (1..10).to_a.sample)
end

100.times do FestivalComment.create(festival_id: Festival.all.sample.id, user_id: User.all.sample.id, text: Faker::Lorem.sentences(number: 1))
end 

puts "Successfully Seeded."