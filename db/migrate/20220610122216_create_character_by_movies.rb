class CreateCharacterByMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :character_by_movies do |t|
      t.references :character, null: false, foreign_key: true
      t.references :movie_serie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
