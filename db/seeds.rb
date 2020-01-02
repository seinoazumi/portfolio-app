# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Work.create!(
  [{
    name: 'キツネの画像',
    category: 1,
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Vulpes_vulpes_laying_in_snow.jpg/250px-Vulpes_vulpes_laying_in_snow.jpg',
    description: 'キツネの画像のテストです',
    time: 2,
    softwear: 1,
    date: '2019-12-1'
  },
  {
    name: 'たぬきの画像',
    category: 2,
    image: 'http://www.shidocc.com/archives/002/201502/large-54d6f316da08b.jpg',
    description: 'たぬきの画像のテストです',
    time: 2,
    softwear: 2,
    date: '2020-01-01'
  },
  {
    name: 'くまの画像',
    category: 3,
    image: 'http://www.worldfolksong.com/closeup/bear/img/little_bear01.jpg',
    description: 'くまの画像のテストです。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れ(212)',
    time: 2,
    softwear: 3,
    date: '2020-01-01'
  }]
)
