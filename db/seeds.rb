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

# 泉質
Sensitsu.create!(
  [
    {name: '硫黄泉'},
    {name: '単純温泉'},
    {name: '塩化物泉'},
    {name: '炭酸水素塩線'},
    {name: '硫酸塩泉'},
    {name: '二酸化炭素線'},
    {name: '含鉄線'},
    {name: '酸性泉'},
    {name: '含よう素泉'},
    {name: '放射能泉'}
  ]
)

# 効能
Kounou.create!(
    [
        {name: '自立神経不安定症'},
        {name: '不眠症'},
        {name: 'うつ状態'},
        {name: '冷え性'},
        {name: '胸焼け防止'},
        {name: '胃腸機能低下'},
        {name: '皮膚病改善'},
        {name: '糖尿病'},
        {name: '潤い肌'},
        {name: '便秘解消'},
        {name: '痛風予防'},
        {name: 'アトピー改善'},
        {name: 'きり傷'},
        {name: '胃の活性化・食欲増進'},
        {name: '胆石予防'},
        {name: '湿疹改善'},
        {name: '血行促進'},
        {name: '腸の修復'},
        {name: '生活習慣病予防'},
        {name: 'リウマチの痛み軽減'}

    ]
)

Oyutype.create!(
  [
    {name: '源泉掛け流し'},
    {name: '天然温泉'},
    {name: '川湯温泉'},
    {name: '海水温泉'},
    {name: 'にごり湯'},
    {name: '乳白色の湯'},
    {name: '薬湯'},
    {name: '墨の湯'},
    {name: '五色の湯'},
    {name: '金泉'}
  ]
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

