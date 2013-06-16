class Document < ActiveRecord::Base
  attr_accessible :code, :name, :template

  validates_presence_of :name, :template
  
  has_and_belongs_to_many :orders
end
