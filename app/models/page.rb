class Page < ActiveRecord::Base
  attr_accessible :content, :name, :title, :featured, :category_id

  extend FriendlyId

  belongs_to :category

  friendly_id :name, use: [:slugged, :history]

  ## scope :featured, where(featured: true)

  def self.featured
    #show the pages which are in featured category
    Category.find_by_name("featured").pages
  end

end
