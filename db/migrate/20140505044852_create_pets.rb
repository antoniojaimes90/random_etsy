class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :productId

      t.timestamps
    end
  end
end
