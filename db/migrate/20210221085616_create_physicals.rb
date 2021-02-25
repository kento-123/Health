class CreatePhysicals < ActiveRecord::Migration[5.2]
  def change
    create_table :physicals do |t|
      t.float :before_weight
      t.float :weight
      t.float :fat_percentage
      t.float :muscle
      t.integer :metabolism

      t.timestamps
    end
  end
end
