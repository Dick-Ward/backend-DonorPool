class CreateDonors < ActiveRecord::Migration[5.1]
  def change
    create_table :donors do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.boolean :featured, default: false
      t.timestamps
    end
  end
end
