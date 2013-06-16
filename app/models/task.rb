class Task < ActiveRecord::Base
  attr_accessible :execution_time, :measurement, :name, :price, :priority, :order_tasks_attributes
  validates_presence_of :measurement, :name, :priority
  
  belongs_to :order
  
  has_many :order_tasks, dependent: :destroy
  has_many :orders, through: :order_tasks
  
  has_many :resource_in_tasks, class_name: "ResourceInTask"
  has_many :resources, through: :resource_in_tasks
  
  accepts_nested_attributes_for :order_tasks
  
  default_scope order: :priority
  
  def cost
    cost = 0
    self.resource_in_tasks.each do |res|
      cost += res.resource.price * res.amount
    end
    cost
  end
end
