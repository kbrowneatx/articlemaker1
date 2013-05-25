class Article < ActiveRecord::Base
  attr_accessible :author, :title, :sections_attributes
  
  has_many :sections
  accepts_nested_attributes_for :sections
end
