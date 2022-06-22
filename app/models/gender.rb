class Gender < ApplicationRecord
  has_many :movie_series, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
end
