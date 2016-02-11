# == Schema Information
#
# Table name: rooms
#
#  id           :integer          not null, primary key
#  home_type    :string
#  room_type    :string
#  accommodate  :integer
#  bed_room     :integer
#  bath_room    :integer
#  listing_name :string
#  summary      :text
#  address      :string
#  is_tv        :boolean
#  is_kitchen   :boolean
#  is_air       :boolean
#  is_heating   :boolean
#  is_internet  :boolean
#  price        :integer
#  active       :boolean
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  latitude     :float
#  longitude    :float
#

require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
