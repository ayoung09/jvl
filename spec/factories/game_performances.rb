# == Schema Information
#
# Table name: game_performances
#
#  id                      :integer          not null, primary key
#  goals                   :integer
#  player_id               :integer
#  assists                 :integer
#  yellow_cards            :integer
#  red_cards               :integer
#  shots_per_game          :decimal(, )
#  pass_success_percentage :decimal(, )
#  aerial_duels_won        :integer
#  created_at              :datetime
#  updated_at              :datetime
#  match_date              :date
#

FactoryGirl.define do
  factory :game_performance do
    goals { Faker::Number.between(1,20) }
    assists { Faker::Number.between(1,20) }
    yellow_cards { Faker::Number.between(1,20) }
    red_cards { Faker::Number.between(1,20) }
    shots_per_game { Faker::Number.decimal(2) }
    pass_success_percentage { Faker::Number.decimal(2) }
    aerial_duels_won { Faker::Number.between(1, 20) }
  end
end
