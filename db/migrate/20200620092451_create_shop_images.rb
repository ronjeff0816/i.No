class CreateShopImages < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_images do |t|
      t.references :shop, null: false, foreign_key: true
      t.string :image, null: false

      t.timestamps
    end
  end
end
