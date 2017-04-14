class GamePerformance < ActiveRecord::Base

  belongs_to :player

  def self.calculate_average_goals
    average(:goals)
  end

  def scrape_data
  end

end

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
