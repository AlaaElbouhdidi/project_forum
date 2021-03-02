class Reply < ApplicationRecord

  belongs_to :post
  belongs_to :user
  belongs_to  :parent, class_name: 'Reply', optional: true
  has_many    :subreplies, class_name: 'Reply', foreign_key: :parent_id, dependent: :destroy


  validates :reply, presence: true

  extend FriendlyId
  friendly_id :reply, use: [:slugged, :finders]

  def should_generate_new_friendly_id?
    reply_changed?
  end
end
