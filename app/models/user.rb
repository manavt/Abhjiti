class User < ApplicationRecord
  validates :name, presence: true, length: {minimum: 4, maximum: 10}
  validates :email, presence: true, uniqueness: true, #format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  #validation
  #callbacks
  #association
  def self.authenticate(em, pwd)
    #find_by_name_and_email(em, pwd)
    where(email: em, password: pwd)
  end
end
