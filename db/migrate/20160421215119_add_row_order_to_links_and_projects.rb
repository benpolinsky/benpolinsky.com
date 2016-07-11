class AddRowOrderToLinksAndProjects < ActiveRecord::Migration[4.2]
  def change
    add_column :links, :row_order, :integer, default: 0
    add_column :projects, :row_order, :integer, default: 0 
  end
end
