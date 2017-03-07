class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :gender
      t.integer :hit_points
      t.integer :life
      t.integer :speed
      t.integer :initiative
      t.integer :strength
      t.integer :experience
      t.integer :charisma
      t.integer :intimidation
      t.integer :weapon_proficiency
      t.integer :weapon_accuracy
      t.integer :tolerance

      t.timestamps
    end
  end
end
