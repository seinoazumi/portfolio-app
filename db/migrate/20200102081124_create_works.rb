class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :name
      t.integer :category
      t.string :image
      t.text :description
      t.string :time
      t.integer :softwear
      t.date :date
      t.timestamps
    end
  end
end
