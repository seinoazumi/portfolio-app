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

# FactoryBot.define do
#   image1 = Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/image1.jpg'))
#   image2 = Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/image2.jpg'))
#   # ToDo: imageが２個入ったハッシュがかけない
#   factory :work do
#     name { '作品１' }
#     category { 1 }
#     images { { images: [ image1 , image2 ].to_s } }
#     description { '作品の説明' }
#     time { 20 }
#     softwear { "Rails" }
#     date { "2020-01-01" }
#     language { "Ruby" }
#     url { "https://www.example.com" }
#     recomend { 1 }
#   end
# end
