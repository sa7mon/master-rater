class CreateAlbumraters < ActiveRecord::Migration
  def change
    create_table :albumraters do |t|
      t.string :name
      t.string :provider
      t.string :uid

      t.timestamps null: false
    end
  end
end
