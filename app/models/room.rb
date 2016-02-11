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

class Room < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :reservations
  has_many :reviews

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :accommodate, presence: true
  validates :bed_room, presence: true
  validates :bath_room, presence: true
  validates :listing_name, presence: true, length: {maximum: 50}
  validates :summary, presence: true, length: {maximum: 500}
  validates :address, presence: true 


  def average_rating
    reviews.count == 0 ? 0 : reviews.average(:star).round(2)
  end

end

