class MovieSerie < ApplicationRecord
  belongs_to :gender
  has_one :character_by_movie
  has_many :characters, through: :character_by_movie
  has_one_attached :photo
end
