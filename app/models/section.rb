class Section < ActiveRecord::Base
  attr_accessible :content, :fmttype, :article_id
  belongs_to :article
end
