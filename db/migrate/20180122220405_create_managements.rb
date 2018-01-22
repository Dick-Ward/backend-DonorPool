class CreateManagements < ActiveRecord::Migration[5.1]
  def change
    create_table :managements do |t|
      t.integer :user_id
      t.integer :charity_id
      t.timestamps
    end
  end
end
