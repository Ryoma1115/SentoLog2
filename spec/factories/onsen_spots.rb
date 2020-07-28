FactoryBot.define do
  factory :onsen_spot do
    name { "大阪温泉" }
    introduction { "testtest" }
    postal_code { "5300000" }
    phone_number { "000000000000" }
    business_hour { "7:00 ~ 22:00" }
    fee { "800" }
    parking { "有" }
    latitude { "大阪" }
    longitude { "大阪" }
    prefecture_code { 27 }
    address_city { "大阪市" }
    address_street { "北区" }
    address_building { "マルビル" }
    image {  Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/onsen_spot_default.jpg'))}
  end
end
