class CreateResumes < ActiveRecord::Migration[5.1]
  def change
    create_table :resumes do |t|
      t.string :document
      t.boolean :published

      t.timestamps
    end
  end
end
