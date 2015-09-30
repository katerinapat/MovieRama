class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :likes
      t.integer :hates
      t.references :user
      t.timestamps null: false
    end
  end
end
