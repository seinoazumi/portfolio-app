class AddImagesToWorks < ActiveRecord::Migration[5.2]
  def change
    rename_column :works, :image, :images
  end
end
