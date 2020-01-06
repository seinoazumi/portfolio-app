class AddSliderAndUrlToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :url, :string
    add_column :works, :recomend, :boolean, default: false
  end
end
