# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
   email: 'g@g',
   password: 'testtest'
)

User.create!(
  [
  {email: 't@t',
    password: 'testtest',
    password_confirmation: 'testtest',
    last_name: '大阪',
    first_name: '太郎',
    last_name_kana: 'オオサカ',
    first_name_kana: 'タロウ',
    postal_code: '5300001',
    address: '大阪府大阪市北区梅田３丁目１−１',
    phone_number: '11111111111'
  },
  { email: 'k@k',
    password: 'testtest',
    password_confirmation: 'testtest',
    last_name: '京都',
    first_name: '花子',
    last_name_kana: 'キョウト',
    first_name_kana: 'ハナコ',
    postal_code: '6008216',
    address: '京都府京都市下京区東塩小路町７２１−１',
    phone_number: '0000000000'
  },
  { email: 'n@n',
    password: 'testtest',
    password_confirmation: 'testtest',
    last_name: '奈良',
    first_name: '京子',
    last_name_kana: 'ナラ',
    first_name_kana: 'キョウコ',
    postal_code: '6308211',
    address: '奈良県奈良市雑司町４０６−１',
    phone_number: '555555555'
  },
  { email: 'w@w',
    password: 'testtest',
    password_confirmation: 'testtest',
    last_name: '和歌山',
    first_name: '敏郎',
    last_name_kana: 'ワカヤマ',
    first_name_kana: 'トシロウ',
    postal_code: '6495301',
    address: '和歌山県東牟婁郡那智勝浦町大字那智山',
    phone_number: '6666666666'
  },
  { email: 'h@h',
    password: 'testtest',
    password_confirmation: 'testtest',
    last_name: '兵庫',
    first_name: '弘樹',
    last_name_kana: 'ヒョウゴ',
    first_name_kana: 'ヒロキ',
    postal_code: '6671344',
    address: '兵庫県美方郡香美町村岡区大笹５８０−１',
    phone_number: '7777777777'
  }
  ]
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
      name: '朝日温泉',
      introduction: '朝日温泉 大阪市住吉区にある軟水使用の健康近代公衆浴場 定期的に音楽LIVEしてます！',
      postal_code: '5580041',
      address: '大阪府大阪市住吉区南住吉３丁目１１−８',
      prefecture_code: 27,
      address_city: '大阪市住吉区',
      address_street: '南住吉３丁目１１−８',
      address_building: '',
      phone_number: '0880331600',
      business_hour: '6:30 ~ 22:00',
      fee: '700',
      parking: '有',
      image: open("./app/assets/images/onsen_arupusu.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: '四万十の宿いやしの湯',
      introduction: '温泉と薬湯、そして海水露天風呂の3種類の湯があり、疲れた心と体を癒してくれます。草木が近く、庭のような造りになっている海水露天風呂には、広々としたスペースにビーチチェアが置かれています。長湯で火照った体をビーチチェアで少し休めればまた温泉を楽しめます。',
      postal_code: '7870155',
      address: '高知県四万十市下田3370',
      prefecture_code: 39,
      address_city: '四万十市',
      address_street: '下田3370',
      address_building: '',
      phone_number: '0880331600',
      business_hour: '6:30 ~ 22:00',
      fee: '680',
      parking: '有',
      image: open("./app/assets/images/kouti.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: '小野川温泉　鈴の宿　登府屋旅館',
      introduction: '山形県米沢市にある小野川温泉鈴の宿登府屋旅館では、源泉かけ流しの温泉と米沢牛のお食事がお楽しめる。',
      postal_code: '9920076',
      address: '山形県米沢市小野川温泉2493 ',
      prefecture_code: 6,
      address_city: '米沢市',
      address_street: '小野川温泉2493',
      address_building: '',
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
      prefecture_code: 21,
      address_city: '下呂市',
      address_street: '湯之島645',
      address_building: '',
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
      prefecture_code: 45,
      address_city: '西諸県郡',
      address_street: '高原町蒲牟田7449',
      address_building: '',
      phone_number: '02699999999',
      business_hour: '13:00 ~ 18:00',
      fee: '1000',
      parking: '有',
      image: open("./app/assets/images/onsen_luxuary.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: 'かいづか温泉リゾート　ほの字の里',
      introduction: '杉づくりの露天風呂と杉、桧づくりの内風呂をご用意しております。ほの字の里の天然温泉『かいづか温泉・ほのぼの湯』は独特の泉質で『ぬるっ』とした感触があり、かの龍神温泉と同様の泉質・効能があるとされ、リピーターのお客さまに『美人の湯』としてご愛顧いただいております。',
      postal_code: '5970111',
      address: '大阪府貝塚市蕎原2114',
      prefecture_code: 27,
      address_city: '貝塚市',
      address_street: '蕎原2114',
      address_building: '',
      phone_number: '0724788777',
      business_hour: '16:00 ~ 0:00',
      fee: '1000',
      parking: '有',
      image: open("./app/assets/images/dougoonsen5.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: '京都桂温泉 仁左衛門の湯',
      introduction: '地下から湧き出した正真正銘の「天然温泉」。薬効豊かな冷と温の２種類の源泉掛け流し温泉の泉質は、ツルツルとした美肌効果の高い単純温泉と、さっぱりしてよく温まる塩化物炭酸水素塩温泉。入り比べをするのも楽しいが、交互に入浴することによって代謝が高まり、効果が倍増するとも言われている。館内には岩盤浴やお食事処もあって寛げる。湯の花を贅沢に感じられる温泉。',
      postal_code: '6158165',
      address: '京都府京都市西京区樫原盆山５',
      prefecture_code: 26,
      address_city: '京都市',
      address_street: '西京区樫原盆山５',
      address_building: '',
      phone_number: '0753934500',
      business_hour: '10:00 ~ 2:00',
      fee: '700',
      parking: '有',
      image: open("./app/assets/images/onsen_spot_gaikann.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: '有馬温泉　上大坊',
      introduction: '有馬温泉で旅館・宿泊をお考えなら有馬の歴史あるお宿の上大坊へ。当館は聖僧仁西上人が、温泉寺の十二神将に因んで建立された十二坊舎の一名を八百年を経た今日も伝承する由緒ある旅舎です。',
      postal_code: '6511401',
      address: '兵庫県神戸市北区有馬町1175',
      prefecture_code: 28,
      address_city: '神戸市北区',
      address_street: '有馬町1175',
      address_building: '',
      phone_number: '0789040531',
      business_hour: '15:00 ~ 1:00',
      fee: '800',
      parking: '有',
      image: open("./app/assets/images/onsen_1.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: '勝浦温泉　ホテル浦島',
      introduction: '和歌山県 那智勝浦温泉 ホテル浦島リゾート＆スパ。当館自慢の温泉、大洞窟風呂・忘帰洞から眺める太平洋の絶景や、まぐろを中心としたバイキング、地元食材を使用した会席料理が楽しめ、世界遺産熊野古道の散策の拠点としても最適です。',
      postal_code: '6495334',
      address: '和歌山県東牟婁郡那智勝浦町勝浦1165-2',
      prefecture_code: 30,
      address_city: '東牟婁郡',
      address_street: '那智勝浦町勝浦1165-2',
      address_building: '',
      phone_number: '0735521011',
      business_hour: '14:00 ~ 10:00',
      fee: '1000',
      parking: '有',
      image: open("./app/assets/images/onsen_yuki1.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: 'マーレ・グラッシア大三島',
      introduction: '平成13年に誕生した複合型リラクセーション施設。海水風呂では海水に含まれるイオン・カルシウム・マグネシウムなどが吸収できる。露天風呂では夕日が眺められる。サイクリングのお客さん御用達。',
      postal_code: '7941304',
      address: '愛媛県今治市大三島町宮浦5902',
      prefecture_code: 38,
      address_city: '今治市',
      address_street: '大三島町宮浦5902',
      address_building: '',
      phone_number: '0897820100',
      business_hour: '10:00 ~ 20:00',
      fee: '510',
      parking: '有',
      image: open("./app/assets/images/shimanami.jpg")
    },
    {
      sensitsu_ids: rand(1..10),
      kounou_ids: rand(1..20),
      oyutype_ids: rand(1..10),
      name: 'ぬぐだまりの里　秘湯　八甲田温泉',
      introduction: '日帰りも宿泊もできる青森の温泉、ラムネ風呂・龍神の湯・八甲田元湯の特徴のある4種類の源泉が人気。',
      postal_code: '0300955',
      address: '青森県青森市駒込深沢766-2',
      prefecture_code: 2,
      address_city: '青森市',
      address_street: '駒込深沢766-2',
      address_building: '',
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
      name: '源泉かけ流し天然温泉 白馬',
      introduction: '長野県白馬村のプチホテル。風呂自慢、グルメ自慢の癒しの宿。',
      postal_code: '3999301',
      address: '長野県北安曇郡白馬村大字北城１４７１８−２５０',
      prefecture_code: 20,
      address_city: '北安曇郡',
      address_street: '白馬村大字北城１４７１８−２５０',
      address_building: '',
      phone_number: '0261726848',
      business_hour: '15:00 ~ 0:00',
      fee: '800',
      parking: '有',
      image: open("./app/assets/images/naganohakuba.jpg")
    }
  ]
  )

  Review.create!(
    [
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 1,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 1,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 1,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 1,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 1,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      },
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 2,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 2,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 2,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 2,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 2,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      },
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 3,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 3,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 3,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 3,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 3,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      },
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 4,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 4,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 4,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 4,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 4,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      },
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 5,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 5,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 5,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 5,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 5,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      },
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 6,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 6,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 6,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 6,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 6,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      },
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 7,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 7,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 7,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 7,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 7,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      },
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 8,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 8,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 8,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 8,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 8,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      },
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 9,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 9,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 9,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 9,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 9,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      },
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 10,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 10,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 10,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 10,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 10,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      },
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 11,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 11,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 11,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 11,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 11,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      },
      {
       title: '温泉宿ならではの気配り',
       comment: '大浴場の内湯は天井も高く広々。 大きな湯船真ん中に仕切りがあり、熱湯とぬる湯に分かれてありました。 とても広大な土地にお風呂とお部屋たちが点在しているので、晴れた日に行けたら小さな街をお散歩しているような気持ちになれてまた違った世界観を楽しめそうです。',
       rate: rand(1..5),
       onsen_spot_id: 12,
       user_id: 1,
       image: open("./app/assets/images/review1.jpg")
      },
      {
       title: '日本庭園のような露天風呂',
       comment: '雄大な岳に抱かれ、ゆったりと佇む「梅園」。岳の大自然に囲まれた約一万坪の庭園が四季折々の自然美で訪れる人を魅了します。岳の自然を感じ、湯を愛で、安らぎの時間を過ごせる。',
       rate: rand(1..5),
       onsen_spot_id: 12,
       user_id: 2,
       image: open("./app/assets/images/review2.jpg")
      },
      {
        title: '紅葉の時期は最高',
        comment: ' 宿の佇まいはおしゃれでモダンな雰囲気を醸し出しつつ、奥ゆかしい和の情趣も感じられる素敵な木造り。受付ロビーは木の温もりを味わえる落ち着いた空間でした。 温泉は、素晴らしいの一言に尽きます。',
        rate: rand(1..5),
        onsen_spot_id: 12,
        user_id: 3,
        image: open("./app/assets/images/review3.jpg")
      },
      {
        title: 'スキー場が隣接する本格温泉。',
        comment: '普段は白濁色で湯花が大量に舞うお湯なのですが、天候などの影響で以前訪れたときには赤褐色のお湯になっていました。また夏に訪れたときには少し歩いた先の外湯・仙女の湯に入りました。滝をすぐ目の前に入る温泉は最高でした。',
        rate: rand(1..5),
        onsen_spot_id: 12,
        user_id: 4,
        image: open("./app/assets/images/review4.jpg")
      },
      {
        title: 'カルシウムたっぷり！最強の濁り湯',
        comment: 'カルシウムたっぷりの黄金色の冷鉱泉です。源泉のままの水風呂と、沸かし湯のお風呂があり、加温する際は熱い空気が湯船の中からゴボーッと入れられます。冷鉱泉の源泉も蛇口をひねって足せます。',
        rate: rand(1..5),
        onsen_spot_id: 12,
        user_id: 5,
        image: open("./app/assets/images/review5.jpg")
      }
    ]
  )
