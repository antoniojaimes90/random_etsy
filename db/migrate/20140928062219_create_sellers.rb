class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :cat
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
