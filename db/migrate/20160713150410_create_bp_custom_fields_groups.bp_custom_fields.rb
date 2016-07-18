# This migration comes from bp_custom_fields (originally 20160502045618)
class CreateBpCustomFieldsGroups < ActiveRecord::Migration
  def change
    create_table :bp_custom_fields_groups do |t|
      t.integer :group_template_id, foreign_key: true, index: { name: 'bpf_fg_gt' }
      t.timestamps null: false
    end
  end
end
