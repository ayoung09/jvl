# == Schema Information
#
# Table name: players
#
#  id            :integer          not null, primary key
#  first_name    :string
#  last_name     :string
#  nickname      :string
#  nationality   :string
#  age           :integer
#  birth_day     :datetime
#  birth_country :string
#  birth_city    :string
#  position      :string
#  foot          :string
#  image         :string
#  height_cm     :integer
#  weight_kg     :integer
#  uuid          :string
#  team_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

FactoryGirl.define do
  factory :player do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    nickname { Faker::Name.first_name }
    nationality { Faker::Address.country }
    age { Faker::Number.number(2) }
    birth_day { Faker::Time.between(30.years.ago, Time.now, :all) }
    birth_country { Faker::Address.country }
    birth_city { Faker::Address.city }
    position { Faker::Lorem.word }
    foot { Faker::Number.between(6, 13) }
    image { Faker::Avatar.image }
    height_cm { Faker::Number.between(150, 300) }
    weight_kg { Faker::Number.between(60, 100) }
    uuid SecureRandom.uuid
  end
end
