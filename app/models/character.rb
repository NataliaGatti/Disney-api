class Character < ApplicationRecord
  has_one :character_by_movie, dependent: :destroy
  has_many :movie_series, through: :character_by_movie
  has_one_attached :photo
  validates :name, :age, :weight, :story, presence: { message: "must be given please" }
  validates :story, length: { minimum: 10 }
end
