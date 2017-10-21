class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :gender
      t.string :preference
      t.string :picture
    end
  end
end
