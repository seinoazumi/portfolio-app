# == Schema Information
#
# Table name: inquiries
#
#  id         :integer          not null, primary key
#  email      :string
#  message    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Inquiry < ApplicationRecord
  validates :name, presence: true, length: { maximum:255 }
  validates :email, presence: true, length: { maximum:255 },
                    format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :message, presence: true
end
