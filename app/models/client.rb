class Client < ActiveRecord::Base
  attr_accessible :details, :email, :name, :phone
  
  has_many :orders, dependent: :destroy
  
  validates :name, presence: true
  validates :email, presence: true,
                    format: { with: /\A\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
  validates :phone, format: { with: /\A((8|\+38)-?)?\s?(\(?0\d{2}\)?)?(-|\s)?\d{3}-?\d{2}-?\d{2}\z/ }
  
  def to_s
    self.name
  end
end
