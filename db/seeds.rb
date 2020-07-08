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

# お湯タイプ
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
  [
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: '源泉かけ流し天然温泉 白馬',
      introduction: '長野県白馬村のプチホテル。風呂自慢、グルメ自慢の癒しの宿。',
      postal_code: '1234567',
      address: '長野県北安曇郡白馬村大字北城１４７１８−２５０',
      phone_number: '0268888888',
      business_hour: '15:00 ~ 0:00',
      fee: '800',
      parking: '有',
      image: open("./app/assets/images/naganohakuba.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: 'ぬぐだまりの里　秘湯　八甲田温泉',
      introduction: '日帰りも宿泊もできる青森の温泉、ラムネ風呂・龍神の湯・八甲田元湯の特徴のある4種類の源泉が人気。',
      postal_code: '0300955',
      address: '青森県青森市駒込深沢766-2',
      phone_number: '0262222222',
      business_hour: '10:00 ~ 22:00',
      fee: '700',
      parking: '有',
      image: open("./app/assets/images/onsen_sizen.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: '小野川温泉　鈴の宿　登府屋旅館',
      introduction: '山形県米沢市にある小野川温泉鈴の宿登府屋旅館では、源泉かけ流しの温泉と米沢牛のお食事がお楽しめる。',
      postal_code: '9920076',
      address: '山形県米沢市小野川温泉2493 ',
      phone_number: '0263333333',
      business_hour: '16:00 ~ 23:00',
      fee: '500',
      parking: '有',
      image: open("./app/assets/images/onsen_yuki.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: '下呂温泉　湯之島館',
      introduction: '下呂温泉の町並みを眼下に望む、敷地５万坪の山中に佇む古格の温泉。木造３層本館は古き佳き昭和浪漫。',
      postal_code: '5092207',
      address: '岐阜県下呂市湯之島645',
      phone_number: '0266666666',
      business_hour: '12:00 ~ 0:00',
      fee: '600',
      parking: '有',
      image: open("./app/assets/images/onsen_iou.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: '極楽温泉　匠の宿',
      introduction: '百戦にも選ばれる名湯。神武天皇が御誕生され諸物を洗い清められたと伝えられる血捨ノ木。',
      postal_code: '8894414',
      address: '宮崎県西諸県郡高原町蒲牟田7449',
      phone_number: '02699999999',
      business_hour: '13:00 ~ 18:00',
      fee: '1000',
      parking: '有',
      image: open("./app/assets/images/onsen_luxuary.jpg")
    }
  ]
  )

