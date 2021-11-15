class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :movie_id
      t.text :bio
      t.string :headshot
      t.date :dob

      t.timestamps
    end
  end
end
