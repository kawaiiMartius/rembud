class OrderTask < ActiveRecord::Base
  attr_accessible :amount, :order_id, :task_id, :task_attributes
  
  belongs_to :order
  belongs_to :task
  
  belongs_to :client
end
