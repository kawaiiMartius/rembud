class ResourceInTask < ActiveRecord::Base
  attr_accessible :amount, :resource_id, :task_id
  
  belongs_to :task
  belongs_to :resource
end
