class Vehicle < ActiveRecord::Base
  # attr_accessible :title, :body
  
  has_one :resource, as: :resoursable
end
