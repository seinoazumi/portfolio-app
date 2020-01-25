class CreateWorkCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :work_categories do |t|
      t.integer :category_id
      t.integer :work_id
      t.timestamps
    end
  end
end
