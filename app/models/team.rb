class Team < ActiveRecord::Base

  validates_uniqueness_of :name

  has_many :players

  def self.get_players(ids = [])
    all_players = []
    ids.each do |id|
      team = Team.find(id)
      player_ids = team.players.collect(&:id)
      player_ids.each do |pid|
        player_info = {}
        player = Player.find(pid)
        player_info[:id] = player.id
        player_info[:first_name] = player.first_name
        player_info[:last_name] = player.last_name

        team = Team.find(player.team_id)
        player_info[:team] = team.name
        player_info[:position] = team.players.find(pid).position
        all_players << player_info
      end
    end

    all_players.each do |player|
      p = Player.find(player[:id])
      player[:name] = p.first_name + ' ' + p.last_name
      player.delete(:first_name)
      player.delete(:last_name)
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
