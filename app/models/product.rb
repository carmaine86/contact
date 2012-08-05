class Product < ActiveRecord::Base
  attr_accessible :customer, :name, :quantity 
  belongs_to :customer

end
