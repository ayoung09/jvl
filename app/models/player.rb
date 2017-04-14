class Player < ActiveRecord::Base

  validates_uniqueness_of :uuid

  belongs_to :team
  has_many :game_performances

  delegate :name, to: :team, prefix: true, allow_nil: true

  def report
    File.write("#{Rails.root}/tmp/report.txt", '')
  end
end

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
