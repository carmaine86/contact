class Customer < ActiveRecord::Base
  attr_accessible :address, :dateofborn, :email, :name, :surname
  validates :name,  :presence => true
  validates :surname, :presence => true
  validates :email,  :presence => true
  validates :address, :presence => true,
                    :length => { :minimum => 5 }

  has_many :products
  has_many :comments
 
  accepts_nested_attributes_for :comments, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
               
end
