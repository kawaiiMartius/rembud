module Resoursable
  class Resoursable < ActiveRecord::Base
    self.abstract_class = true

    attr_accessible :resource_attributes
  
    has_one :resource, as: :resoursable, dependent: :destroy
  
    accepts_nested_attributes_for :resource
  end
end