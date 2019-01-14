class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :image_uri
      t.string :vendor
      t.string :vendor_loc
      t.string :tag

      t.timestamps
    end
  end
end
