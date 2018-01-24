class CreateCharities < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :tagline
      t.string :URL
      t.string :picture
      t.string :icon
      t.string :mission
      t.timestamps
    end
  end
end
