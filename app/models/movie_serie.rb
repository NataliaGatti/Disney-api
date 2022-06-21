class MovieSerie < ApplicationRecord
  belongs_to :gender
  has_one :character_by_movie
  has_many :characters, through: :character_by_movie
  has_one_attached :photo
  validates :title, :creation_date, :calification, presence: true
  validates :calification, inclusion: { in: (1..5), message: "Califique en el rango de 1 a 5." }, _default: 1
  validates :calification, numericality: true
end
