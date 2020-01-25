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

class WorkCategory < ApplicationRecord
  belongs_to :work
  belongs_to :category
end
