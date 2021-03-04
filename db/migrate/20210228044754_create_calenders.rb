class CreateCalenders < ActiveRecord::Migration[5.2]
  def change
    create_table :calenders do |t|
      t.float :before_weight
      t.float :weight
      t.float :fat_percentage
      t.float :muscle
      t.integer :metabolism
      t.integer :user_id

      t.timestamps
    end
  end
end
