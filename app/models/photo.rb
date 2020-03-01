class Photo < ApplicationRecord
  # Direct associations

  belongs_to :owner,
             :class_name => "User"

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  has_many   :commenters,
             :through => :comments,
             :source => :author

  has_many   :feed_follower,
             :through => :owner,
             :source => :leaders

  # Validations

  validates :image, :presence => true

end
