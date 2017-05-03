class AddFrontInfoToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :show_on_front, :boolean
    add_column :projects, :front_description, :text
  end
end
