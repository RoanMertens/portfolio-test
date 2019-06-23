# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# projects.

puts "Cleansing projects"
Project.destroy_all
puts "Cleansing testemonials"
Testemonial.destroy_all
puts "Preparing new seeds"

names = ['Buddy Up',
         'On Board',
         'Portfolio Webite',
         'Biomimic Studio'
       ]
 # 'Hangman',
 # 'Snake Game',
 # 'Wuxia Reader'

location = ['https://rails-airbnb-friend-group.herokuapp.com',
            'https://get-on-board.co',
            'https://portfolio-roan.herokuapp.com',
            'https://www.biomimicstudio.org'
          ]

github = ['https://github.com/msanchezb/rails-airbnb-friend-group',
          'https://github.com/freddiescadding/on-board',
          'https://github.com/RoanMertens/portfolio-test',
          'false'
        ]

image = ['projects/buddy-up.png',
         'projects/on-board.png',
         'projects/portfolio-website.png',
         'projects/biomimic-studio.png'
       ]

blurb = ['The platform is an e-commerce platform inspired by Airbnb made
         during the Le Wagon bootcamp. The product was made utilising the
         following languages: JavaScript, Ruby on Rails, Ajax, HTML and
         CSS whilst also working as a team on Github/Heroku.',
         'On Board is a platform for boardgame enthausiasts who are
         looking for others to do boardgames with. The product was made
         utilising the following languages: JavaScript, Ruby on Rails,
         AJAX, HTML and CSS whilst also working as a team on
         Github/Heroku.',
         'The portfolio website you are currently on is where I can be
         contacted and where I present my projects. The product was made
         utilising the following languages: JavaScript, Ruby on Rails,
         AJAX, HTML and CSS.',
         'It is the portfolio website of Biomimic Studio. Biomimic Studio
         is the animatronics company from Gustav Hoegen. Biomimic Studio worked
         on movies such as Jurassic World, Star Wars and Doctor Who.
         The website is made using HTML, CSS and JavaScript.'
       ]
# 'It is the snake game made in ruby using api\'s',
# 'It is an online Chinese novel reading website made utilising
# the following languages: JavaScript, Ruby on Rails, Ajax, HTML and
# CSS'

# creates projects
names.length.times do |i|
  Project.create(name: names[i],
                 location_url: location[i],
                 github_url: github[i],
                 image_url: image[i],
                 blurb: blurb[i])
end

# projects = Project.all

# testemonials
# person = [{ connection: 'colleague', project: projects.first, content: 'amazing', rating: 8, name: 'Freddie Scadding' },
#           { connection: 'colleague', project: projects.first, content: 'such a nice guy', rating: 7, name: 'Maria Sanches' },
#           { connection: 'teacher', project: projects.second, content: 'hardworking', rating: 9, name: 'Edward Ward' },
#           { connection: 'colleague', project: projects.second, content: 'friendly', rating: 10, name: 'Luiza Pinto' },
#           { connection: 'client', project: projects[5], content: 'clear explanations', rating: 8, name: 'Gustav Hoegen' },
#           { connection: 'teacher', project: projects.first, content: 'great student', rating: 7, name: 'Benjamin Baranger' }]

# Testemonial.create(person)
