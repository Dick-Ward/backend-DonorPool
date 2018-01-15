class CreateUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :updates do |t|
      t.integer :charity_id
      t.string :title
      t.string :content
      t.string :picture

      t.timestamps
    end
  end
end
