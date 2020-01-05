class Work < ApplicationRecord
  mount_uploader :image, ImageUploader

  enum category: {
    default: 0,
    programing: 1,
    web_design: 2,
    dtp_design: 3,
    other: 4
  }, _prefix: true
end
