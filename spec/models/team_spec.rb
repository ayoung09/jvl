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

require 'rails_helper'

describe Team, type: :model do
  subject(:team) { create(:team) }

  it { is_expected.to be_valid }
  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to have_many(:players) }
end
