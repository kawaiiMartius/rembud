class Material < ActiveRecord::Base
  attr_accessible :measurement
  
  has_one :resource, as: :resoursable
end
