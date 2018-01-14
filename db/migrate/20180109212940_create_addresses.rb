class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :type
      t.integer :user_id
      t.timestamps
    end
  end
end
