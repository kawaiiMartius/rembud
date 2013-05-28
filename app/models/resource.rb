class Resource < ActiveRecord::Base
  attr_accessible :code, :name, :price
  
  belongs_to :resoursable, polymorphic: true
  
  has_many :resource_in_tasks, class_name: "ResourceInTask", dependent: :destroy
  has_many :tasks, through: :resouce_in_tasks
end
