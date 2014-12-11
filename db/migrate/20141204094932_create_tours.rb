class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.integer :city_id
      t.integer :provider_id
      t.string :name
      t.string :image
      t.text :annotation
      t.text :description
      t.date :start_date
      t.date :finish_date
      t.integer :price
      t.integer :views_count, default: 0
      t.integer :orders_count, default: 0
      t.integer :comments_count, default: 0
      t.boolean :active


      t.timestamps
    end
  end
end
