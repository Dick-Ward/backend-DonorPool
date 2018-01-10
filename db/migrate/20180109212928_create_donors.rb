class CreateDonors < ActiveRecord::Migration[5.1]
  def change
    create_table :donors do |t|
      t.string :firstName
      t.string :lastName
      t.string :picture
      t.string :userName
      t.string :email
      t.string :password
      t.boolean :featured, default: false
      t.timestamps
    end
  end
end
