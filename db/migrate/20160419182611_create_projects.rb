class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :client
      t.string :site_url
      t.text :description
      t.string :image
      t.string :public_repo
      t.datetime :creation_date

      t.timestamps null: false
    end
  end
end
