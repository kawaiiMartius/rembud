class Order < ActiveRecord::Base
  attr_accessible :stage, :started_at, :client_id
  
  belongs_to :client
  
  has_and_belongs_to_many :documents
  
  has_many :order_tasks, dependent: :destroy
  has_many :tasks, through: :order_tasks
  
  def to_s
    self.started_at
  end
  
  def price
    self.order_tasks.inject(0) { |sum, order_task| sum + order_task.task.price * order_task.amount }
  end
  
  def cost
    self.order_tasks.inject(0) { |sum, task| sum + task.task.cost * task.amount }
  end
end
