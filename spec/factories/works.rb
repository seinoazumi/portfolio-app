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

FactoryBot.define do

  factory :work do
    name { '作品１' }
    images { { images: [ image1 , image2 ] } }
    description { '作品の説明' }
    time { 20 }
    softwear { "Rails" }
    date { "2020-01-01" }
    language { "Ruby" }
    url { "https://www.example.com" }
    recomend { 1 }

    category # ファクトリ呼び出し
  end

  factory :image do
    # logo { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/logo_image.jpg'), 'image/jpeg') }
    # ToDo: imageが２個入ったハッシュがかけない
    image1 { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/image1.jpg'), 'image/jpeg') }
    image2 { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/image1.jpg'), 'image/jpeg') }
  end


  factory :category do
    name { 'カテゴリー１' }
  end
end
