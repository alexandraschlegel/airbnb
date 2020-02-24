class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :address
      t.integer :rating
      t.integer :price
      t.integer :capacity
      t.string :facilities
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
