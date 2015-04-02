class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :albumname
      t.attachment :image
      t.timestamps
    end
  end
end
