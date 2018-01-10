class CreateSupports < ActiveRecord::Migration[5.1]
  def change
    create_table :supports do |t|
      t.integer :donor_id
      t.integer :charity_id
      t.timestamps
    end
  end
end
