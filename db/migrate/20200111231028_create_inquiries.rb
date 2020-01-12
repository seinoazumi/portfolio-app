class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.string :name, presence: true
      t.string :email, presence: true
      t.string :message, presence: true
      t.timestamps
    end
  end
end
