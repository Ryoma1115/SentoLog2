FactoryBot.define do
  factory :review do
    title { "最高でした" }
    comment { "老舗のとても大きなホテルです。ホテルニューアワジ本館ともつながっており、お風呂は全部で3ヵ所あるので、ホテル内にいながら湯めぐりができます。" }
    rate { rand(1.0..5.0) }
    onsen_spot_id { 1 }
    user_id { 1 }
    image {  Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/review1.jpg'))}
  end
end
