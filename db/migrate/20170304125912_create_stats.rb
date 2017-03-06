class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.integer :strength
      t.integer :agility
      t.integer :stamina
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
