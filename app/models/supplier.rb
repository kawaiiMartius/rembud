class Supplier < ActiveRecord::Base
  attr_accessible :qualification
  
  has_one :resource, as: :resoursable
end
