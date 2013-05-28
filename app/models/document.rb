class Document < ActiveRecord::Base
  attr_accessible :code, :name, :template
  
  has_and_belongs_to_many :orders
end
