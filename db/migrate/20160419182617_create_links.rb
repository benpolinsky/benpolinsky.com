class CreateLinks < ActiveRecord::Migration[4.2]
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.string :image
      t.string :subtitle

      t.timestamps null: false
    end
  end
end
