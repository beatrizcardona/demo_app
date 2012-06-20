class User < ActiveRecord::Base
  attr_accessible :address, :contact_name, :description, :email, :name, :not_operating_from, :not_operating_to, :phone
  
  has_many :tour
  
end
