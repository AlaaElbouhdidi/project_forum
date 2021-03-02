class Channel < ApplicationRecord
  has_many :posts
  has_many :user, through: :posts
  resourcify

  extend FriendlyId
  friendly_id :channel, use: [:slugged, :finders]

  def should_generate_new_friendly_id?
    channel_changed?
  end

end
