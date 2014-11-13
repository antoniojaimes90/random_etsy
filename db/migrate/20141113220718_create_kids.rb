class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :productId

      t.timestamps
    end
  end
end
