class Channel < ActiveRecord::Base
  
  has_and_belongs_to_many :categories
  
  attr_accessible :name, :num, :category_ids, :logo
  mount_uploader :logo, LogoUploader
    
  validates :name, :num , :presence => true
  validates :num, :uniqueness => true
end
