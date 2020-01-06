class Work < ApplicationRecord
  mount_uploaders :images, ImageUploader
  serialize :images, JSON

  enum category: {
    default: 0,
    programing: 1,
    web_design: 2,
    dtp_design: 3,
    other: 4
  }, _prefix: true
end
