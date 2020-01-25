# == Schema Information
#
# Table name: works
#
#  id          :integer          not null, primary key
#  date        :date
#  description :text
#  images      :string
#  language    :string
#  name        :string
#  recomend    :boolean          default(FALSE)
#  softwear    :string
#  time        :string
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Work < ApplicationRecord
  # アソシエーション
  has_many :work_categories, dependent: :destroy
  has_many :categories, through: :work_categories
  accepts_nested_attributes_for :work_categories, allow_destroy: true

  # モデルのバリデーション
  with_options presence: true do
    validates :date
    validates :description
    validates :images
    validates :name
    validates :time
  end 

  # カスタムバリデーション
  validate :images_should_be_more_than_two

  # アップローダーの設定
  mount_uploaders :images, ImageUploader
  serialize :images, JSON

  # enum categoryの記載方法を変えたので、使わないかもしれない
  # enum category: {
  #   default: 0,
  #   programing: 1,
  #   web_design: 2,
  #   dtp_design: 3,
  #   other: 4
  # }, _prefix: true

  # カスタムバリデーションのメソッド
  def images_should_be_more_than_two
    if images.present? && images.length < 2
      errors.add(:images, ": 画像は２つ以上投稿してください")
    end
  end
end
