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

Sensitsu.create!(
    name: '硫黄泉'
)

OnsenSpot.create!(
    sensitsu_id: '1',
    name: '源泉かけ流し天然温泉 白馬',
    introduction: '長野県白馬村のプチホテル。風呂自慢、グルメ自慢の癒しの宿。',
    postal_code: '1234567',
    address: '長野県北安曇郡白馬村大字北城１４７１８−２５０',
    phone_number: '0268888888',
    business_hour: '15:00 ~ 0:00',
    fee: '800',
    parking: '有',
    image: open("./app/assets/images/naganohakuba.jpg")
)

