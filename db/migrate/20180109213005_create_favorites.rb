class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :donor_id
      t.integer :charity_id
      t.timestamps
    end
  end
end
