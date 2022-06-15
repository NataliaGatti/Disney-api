json.extract! @character, :name, :age, :weight, :story, :photo
json.movie_series @character.movie_series do |movie|
  json.extract! movie, :title, :creation_date, :calification
end