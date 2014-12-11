class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :tour_id
      t.string :name
      t.string :email
      t.string :phone
      t.integer :status_cd, default: 0

      t.timestamps
    end
  end
end
