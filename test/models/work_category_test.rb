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

require 'test_helper'

class WorkCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
