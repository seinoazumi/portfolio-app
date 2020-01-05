class AddLangageToWorks < ActiveRecord::Migration[5.2]
  def change
    change_column :works, :softwear, :string
    add_column :works, :language, :string
  end
end
