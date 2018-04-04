class CreateAlbumraters < ActiveRecord::Migration
  def change
    create_table :albumraters do |t|
      t.string :name
      t.string :provider
      t.string :uid, null: false
      t.string :nickname

      t.timestamps null: false
    end
  end
end
