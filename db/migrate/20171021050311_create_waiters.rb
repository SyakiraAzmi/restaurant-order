class CreateWaiters < ActiveRecord::Migration[5.1]
  def change
    create_table :waiters do |t|
      t.string :name
      t.string :gender
      t.string :picture
    end
  end
end
