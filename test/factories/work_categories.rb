# == Schema Information
#
# Table name: work_categories
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  work_id     :integer
#
# Indexes
#
#  index_work_categories_on_category_id  (category_id)
#  index_work_categories_on_work_id      (work_id)
#

FactoryBot.define do
  factory :work_category do
    
  end
end
