class CreateWorkCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :work_categories do |t|
      t.references :work, index: true
      t.references :category, index: true
      t.timestamps
    end
  end
end
