class Page < ActiveRecord::Base
  attr_accessible :content, :name, :title, :featured

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  def self.featured
    where(featured: true)
  end

end
