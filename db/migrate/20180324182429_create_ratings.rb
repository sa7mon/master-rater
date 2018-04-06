class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating, :null => false
      t.integer :albumrater_id, :null => false
      t.integer :album_id, :null => false
      t.foreign_key :album, :id => :album_id
      t.timestamps null: false
    end
  end
end
