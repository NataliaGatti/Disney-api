# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Destroying data..."
User.destroy_all
Character.destroy_all
MovieSerie.delete_all
Gender.delete_all
#CharacterByMovie.destroy_all

puts "Creating a user..."
User.create!(email: "gattinati.ng@gmail.com", password: "123456")

puts "User created"
puts "Creating Characters..."
belle = Character.create!(name: "Belle", age: 17, weight: 55, story: "When Belle’s father is captured, she takes his place as the fearsome Beast’s prisoner. But life in the enchanted castle isn’t as terrible as Belle imagines.")
belle.photo.attach(io: open("https://static.wikia.nocookie.net/disneyprincess/images/5/5e/403_Sem_T%C3%ADtulo_20220520200840.png/revision/latest?cb=20220610203816"), filename: "belle.png", content_type: "image/jpeg")
belle.save!

aurora = Character.create!(name: "Aurora", age: 16, weight: 50, story: "Aurora's parents named her after the Roman goddess of the dawn because she filled their lives with sunshine. Soon after she was born, she was presented to the kingdom at a christening. But during the christening, the evil fairy Maleficent places a curse on Baby Aurora. Aurora will get into an enchanted sleep, only to be awakened by true love's kiss.")
aurora.photo.attach(io: open("https://static.wikia.nocookie.net/disneyprincess/images/2/21/403_Sem_T%C3%ADtulo_20220520200827.png/revision/latest/scale-to-width-down/260?cb=20220610203713"), filename: "aurora.png", content_type: "image/jpeg")
aurora.save!

merida = Character.create!(name: "Merida", age: 16, weight: 52, story: "Merida is a very brave, bold, daring, courageous, stubborn, rebellious and headstrong girl who does not fit the stereotypical princess role. Rather than being a damsel in distress who is subservient to the customs, traditions, and social restrictions her society places on her and expects her to follow, Merida openly rebels and defies her heritage as a princess and would like for nothing more than to be a normal girl.")
merida.photo.attach(io: open("https://static.wikia.nocookie.net/disneyprincess/images/3/3e/Merida_web_small.webp/revision/latest?cb=20201130161633"), filename: "merida.png", content_type: "image/jpeg")
merida.save!

mulan = Character.create!(name: "Mulan", age: 16, weight: 52, story: "Mulan is the only child of Fa Zhou, a former war veteran, and Fa Li. Mulan is forced to go to the town Matchmaker to find her a husband, which ends in humiliating failure.  Shortly after, that one man in every family must serve in the war. Her father says that he will go in spite of his old age and old war wounds. Mulan decides to go in his place posing as a man, cutting her long hair with a sword, stealing her father's armor and riding away on her horse, Khan, so she will keep him from risking his life.")
mulan.photo.attach(io: open("https://static.wikia.nocookie.net/disneyprincess/images/c/c0/Mulan-mulan-32266732-400-600.jpg/revision/latest?cb=20130730210008"), filename: "mulan.png", content_type: "image/jpeg")
mulan.save!

ariel = Character.create!(name: "Ariel", age: 16, weight: 60, story: "Ariel was the 16-year-old daughter of the sea king, King Triton, who hated humans. However, she wanted to know more about humans and was fascinated by them. Her goal was set when she fell in love with a human prince Eric.")
ariel.photo.attach(io: open("https://static.wikia.nocookie.net/disneyprincess/images/2/20/Arielfunny.webp/revision/latest?cb=20201130160622"), filename: "ariel.png", content_type: "image/jpeg")
ariel.save!

moana = Character.create!(name: "Moana", age: 16, weight: 58, story: "Born on the island village of Motunui, Moana is the daughter of Chief Tui and Sina, with an inherited love for the seas and voyaging. When her island becomes endangered, Moana is chosen by the ocean to journey across the sea to save both her people and the world.")
moana.photo.attach(io: open("https://static.wikia.nocookie.net/disney/images/8/87/Moanastanding.jpg/revision/latest/scale-to-width-down/108?cb=20151011013542"), filename: "moana.png", content_type: "image/jpeg")
moana.save!

puts "Characters created"
puts "Creating Genders..."

romantic = Gender.create!(name: "Romantic")
romantic.photo.attach(io: open("https://play-lh.googleusercontent.com/hjyEYPf3EV4F0xnyk-8kEHsvEve-umZRH-9fZwWdJZ8RjS7HTuxFTS1EEe29z1kar3bi"), filename: "romantic.png", content_type: "image/jpeg")
romantic.save!

adventure = Gender.create!(name: "Adventure")
adventure.photo.attach(io: open("https://image.winudf.com/v2/image1/Z2FtZXMuZGFsaS5hZHZlbnR1cmUucG9pbnQuY2xpY2subHVjaWQuZHJlYW0ud2l0Y2gucGxhbmV0LnJpZGRsZV9zY3JlZW5femgtQ05fMV8xNTc4NTQ3MDI4XzAwMQ/screen-1.jpg?fakeurl=1&type=.webp"), filename: "romantic.png", content_type: "image/jpeg")
adventure.save!

puts "Genders created"
puts "Creating Movies..."

beauty_beast = MovieSerie.create!(title: "Beauty and the Beast", creation_date: "September 29, 1991", calification: 5, gender: romantic)
beauty_beast.photo.attach(io: open("https://static.wikia.nocookie.net/disneyprincess/images/0/09/Beauty_and_the_Beast_film_poster.jpg/revision/latest/scale-to-width-down/350?cb=20200408144337"), filename: "beauty_beast.png", content_type: "image/jpeg")
beauty_beast.save!


sleeping_beauty = MovieSerie.create!(title: "Sleeping Beauty", creation_date: "January 29, 1959", calification: 3, gender: romantic)
sleeping_beauty.photo.attach(io: open("https://static.wikia.nocookie.net/disneyprincess/images/7/75/Sleeping-beauty.jpg/revision/latest/scale-to-width-down/333?cb=20130812151930"), filename: "sleeping_beauty.png", content_type: "image/jpeg")
sleeping_beauty.save!

brave = MovieSerie.create!(title: "Brave", creation_date: "June 22, 2012", calification: 4, gender: adventure)
brave.photo.attach(io: open("https://static.wikia.nocookie.net/disneyprincess/images/3/31/Brave_Movie_Poster.jpg/revision/latest/scale-to-width-down/338?cb=20180609232419"), filename: "brave.png", content_type: "image/jpeg")
brave.save!

mulan_movie = MovieSerie.create!(title: "Mulan", creation_date: "June 19, 1998", calification: 3, gender: adventure)
mulan_movie.photo.attach(io: open("https://static.wikia.nocookie.net/disneyprincess/images/0/01/51c9hJVDUCL._SX500_.jpg/revision/latest/scale-to-width-down/350?cb=20121027135502"), filename: "mulan.png", content_type: "image/jpeg")
mulan_movie.save!

mermaid = MovieSerie.create!(title: "The Little Mermaid", creation_date: "November 14, 1989", calification: 5, gender: romantic)
mermaid.photo.attach(io: open("https://static.wikia.nocookie.net/disneyprincess/images/4/44/Walt-Disney-Posters-The-Little-Mermaid-walt-disney-characters-34301569-1000-1458.jpg/revision/latest/scale-to-width-down/343?cb=20130812151951"), filename: "mermaid.png", content_type: "image/jpeg")
mermaid.save!

moana_movie = MovieSerie.create!(title: "Moana", creation_date: "November 23, 2016", calification: 5, gender: adventure)
moana_movie.photo.attach(io: open("https://static.wikia.nocookie.net/disneyprincess/images/7/76/Moana_official_poster.jpg/revision/latest/scale-to-width-down/337?cb=20190222020323"), filename: "moana.png", content_type: "image/jpeg")
moana_movie.save!

puts "Movies created"
puts "Creating Character_By_Movies..."

belle_bb = CharacterByMovie.create!(character: belle, movie_serie: beauty_beast)
aurora_sleeping_beauty = CharacterByMovie.create!(character: aurora, movie_serie: sleeping_beauty)
merida_brave = CharacterByMovie.create!(character: merida, movie_serie: brave)
mulan_mulan = CharacterByMovie.create!(character: mulan, movie_serie: mulan_movie)
ariel_mermaid = CharacterByMovie.create!(character: ariel, movie_serie: mermaid)
moana_moana = CharacterByMovie.create!(character: moana, movie_serie: moana_movie)

puts "Ready!"
