class CreateMovieSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_series do |t|
      t.string :title
      t.string :creation_date
      t.integer :calification
      t.references :gender, null: false, foreign_key: true

      t.timestamps
    end
  end
end
