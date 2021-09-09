# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
Comment.destroy_all


names = ['avengers', 'batman','spider-man']

names.each do |name| 


response = HTTParty.get("http://www.omdbapi.com/?s=#{name}&apikey=2b8b5402")
movies = JSON.parse(response.body)


movies["Search"].each do |movie|
  Movie.create({
     title: movie["Title"],
     year: movie["Year"].to_i,
     poster: movie["Poster"],
     like: rand(1..90)
  })
  end
end 


firstComment = Comment.create(content: "Highly recommend this movie", movie_id: Movie.first.id, name:"Fika")
