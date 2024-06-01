class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      t.string :shop_image
      t.text :caption
      t.integer :user_id


      t.timestamps
    end
  end
end
