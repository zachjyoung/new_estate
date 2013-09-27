class Owner < ActiveRecord::Base
  has_many :buildings,
    inverse_of: :owner,
    dependent: :nullify
    
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_presence_of :company

  validates_format_of :email, :with => /(^.+@.+$)/
end

