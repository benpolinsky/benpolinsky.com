class AddSlugsToProjectsAndLinks < ActiveRecord::Migration
  def change
    add_column :projects, :slug, :string, uniq: true
    add_column :links, :slug, :string, uniq: true
  end
end
