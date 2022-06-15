json.extract! @character, :name, :age, :weight, :story, :photo
json.extract! @character.character_by_movie.movie_serie, :title, :creation_date, :calification
