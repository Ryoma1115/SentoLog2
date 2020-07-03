# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
   email: 't@t',
   password: 'testtest'
)

User.create!(
    email: 't@t',
    password: 'testtest',
    last_name: '大阪',
    first_name: '太郎',
    last_name_kana: 'オオサカ',
    first_name_kana: 'タロウ',
    postal_code: '5300001',
    address: '大阪府大阪市北区梅田３丁目１−１',
    phone_number: '11111111111'
)