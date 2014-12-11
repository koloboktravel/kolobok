class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :image
      t.integer :tours_count, default: 0

      t.timestamps
    end
  end
end
