class Comment < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :body
end
