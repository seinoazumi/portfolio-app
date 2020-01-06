class Work < ApplicationRecord
  # モデルのバリデーション
  with_options presence: true do
    validates :category
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

  # enumの設定
  enum category: {
    default: 0,
    programing: 1,
    web_design: 2,
    dtp_design: 3,
    other: 4
  }, _prefix: true

  # カスタムバリデーションのメソッド
  def images_should_be_more_than_two
    if images.present? && images.length < 2
      errors.add(:images, ": 画像は２つ以上投稿してください")
    end
  end
end
