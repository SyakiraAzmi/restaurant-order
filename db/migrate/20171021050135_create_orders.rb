class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :food
      t.string :drink
      t.string :status
    end
  end
end
