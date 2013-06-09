class OrderTask < ActiveRecord::Base
  attr_accessible :amount, :order_id, :task_id
  
  belongs_to :order
  belongs_to :task
  
  belongs_to :client
  
  scope :sort_by_task, includes(:task).order('tasks.priority')
end
