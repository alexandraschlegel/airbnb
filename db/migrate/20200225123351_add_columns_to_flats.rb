class AddColumnsToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :towers, :integer
    add_column :flats, :moats, :integer
    add_column :flats, :draw_bridges, :integer
  end
end
