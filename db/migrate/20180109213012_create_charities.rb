class CreateCharities < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :tagLine
      t.string :URL
      t.string :category
      t.string :cause
      t.string :picture
      t.string :icon
      t.timestamps
    end
  end
end
