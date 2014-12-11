class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :logo
      t.string :phone
      t.string :email
      t.integer :tours_count, defaul: 0

      t.timestamps
    end
  end
end
