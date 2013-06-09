class Page < ActiveRecord::Base
  attr_accessible :content, :name, :title, :featured, :category_id

  extend FriendlyId

  belongs_to :category

  friendly_id :name, use: [:slugged, :history]

  scope :featured, where(featured: true)

end
