class CreateJewelries < ActiveRecord::Migration
  def change
    create_table :jewelries do |t|
      t.string :productId

      t.timestamps
    end
  end
end
