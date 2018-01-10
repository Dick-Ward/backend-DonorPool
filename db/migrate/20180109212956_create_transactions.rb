class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :donor_id
      t.integer :charity_id
      t.boolean :payment_successful
      t.timestamps
    end
  end
end