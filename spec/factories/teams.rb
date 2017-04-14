# == Schema Information
#
# Table name: teams
#
#  id               :integer          not null, primary key
#  name             :string
#  logo             :string
#  website          :string
#  home_stadium     :string
#  stadium_capacity :string
#  founding_year    :integer
#  uuid             :string
#  created_at       :datetime
#  updated_at       :datetime
#

FactoryGirl.define do
  factory :team do
    name { Faker::Team.name }
    logo { Faker::Avatar.image }
    website { Faker::Internet.url }
    home_stadium { Faker::Team.state }
    stadium_capacity { Faker::Number.number(10) }
    founding_year 2006
    uuid SecureRandom.uuid
  end
end


#  id               :integer          not null, primary key
#  name             :string
#  logo             :string
#  website          :string
#  home_stadium     :string
#  stadium_capacity :string
#  founding_year    :integer
#  uuid             :string
#  created_at       :datetime
#  updated_at       :datetime
#
