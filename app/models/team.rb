class Team < ActiveRecord::Base

  validates_uniqueness_of :name

  has_many :players

  def self.get_players(ids = [])
    all_players = []
    ids.each do |id|
      team = Team.find(id)
      Team.find(id).players.each do |player|
        all_players << {
          id: player.id,
          name: "#{player.first_name} #{player.last_name}",
          position: player.position,
          team: team.name
        }
      end
    end

    all_players
  end
end

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
