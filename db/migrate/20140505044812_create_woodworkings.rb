class CreateWoodworkings < ActiveRecord::Migration
  def change
    create_table :woodworkings do |t|
      t.string :productId

      t.timestamps
    end
  end
end
