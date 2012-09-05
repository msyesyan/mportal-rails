class Category < ActiveRecord::Base
  has_and_belongs_to_many :channels
  attr_accessible :name, :channel_ids
  
  validates :name, :presence => true
  validates :name, :uniqueness => true
end
