class User < ApplicationRecord
  #validation
  #callbacks
  #association
  def self.authenticate(em, pwd)
    #find_by_name_and_email(em, pwd)
    where(email: em, password: pwd)
  end
end
