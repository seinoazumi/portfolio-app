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

class WorkCategory < ApplicationRecord
  belongs_to :work
  belongs_to :category
end
