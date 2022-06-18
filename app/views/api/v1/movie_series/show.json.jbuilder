json.extract! @movie, :title, :creation_date, :calification, :gender, :photo
json.characters @movie.characters do |character|
  json.extract! character, :name, :age, :weight, :story, :photo
end
