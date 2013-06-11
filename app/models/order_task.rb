class OrderTask < ActiveRecord::Base
  attr_accessible :amount, :order_id, :task_id, :is_complete

  after_save :change_order_stage
  
  belongs_to :order
  belongs_to :task
  
  belongs_to :client
  
  scope :sort_by_task, includes(:task).order('tasks.priority')
  scope :incomplete, includes(:task).where('is_complete = ?', false).order('tasks.priority')
  
  def price
    self.task.price * self.amount
  end

  def cost
    self.task.cost * self.amount
  end

  private

  def change_order_stage
    incomplete = OrderTask.incomplete

    unless incomplete.empty?
      self.order.stage = incomplete.first.task.name
    else
      self.order.stage = I18n.t :completed, scope: :helpers
    end

    self.order.save
  end
end
