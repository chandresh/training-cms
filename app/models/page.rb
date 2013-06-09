class Page < ActiveRecord::Base
  attr_accessible :content, :name, :title

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

end
