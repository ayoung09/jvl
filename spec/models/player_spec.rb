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

require 'rails_helper'

describe Player, type: :model do
  subject(:player) { create(:player) }

  it { is_expected.to be_valid }
  it { is_expected.to validate_uniqueness_of(:uuid) }
  it { is_expected.to have_many(:game_performances) }
  it { is_expected.to belong_to(:team) }
end
