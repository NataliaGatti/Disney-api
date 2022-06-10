class MovieSerie < ApplicationRecord
  belongs_to :gender
  has_many :character_by_movies
end
