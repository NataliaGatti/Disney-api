class CharacterByMovie < ApplicationRecord
  belongs_to :character
  belongs_to :movie_serie
end
