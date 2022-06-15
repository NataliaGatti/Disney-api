class Character < ApplicationRecord
  has_one :character_by_movie
  has_many :movie_series, through: :character_by_movie
  has_one_attached :photo
end
