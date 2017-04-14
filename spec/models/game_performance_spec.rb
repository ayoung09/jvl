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

require 'rails_helper'

describe GamePerformance, type: :model do
  subject(:game_performance) { create(:game_performance) }

  it { is_expected.to be_valid }
  it { is_expected.to belong_to(:player) }
end
