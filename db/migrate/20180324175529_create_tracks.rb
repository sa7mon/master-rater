class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string  "name", :null => false
      
      t.integer "album_id", :null => false
      t.foreign_key :album, :id => :album_id
      
      t.string "duration"
      t.integer "album_order", :null => false
      t.timestamps null: false
    end
  end
end
