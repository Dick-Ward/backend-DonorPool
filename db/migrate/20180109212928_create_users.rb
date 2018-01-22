class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.boolean :featured, default: false
      t.boolean :charity_manager, default: false
      t.timestamps
    end
  end
end
