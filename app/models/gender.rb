class Gender < ApplicationRecord
  has_many :movie_series
  has_one_attached :photo
  validates :name, presence: true
end
