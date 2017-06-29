class User < ApplicationRecord
  #http://api.rubyonrails.org/v5.1/classes/ActiveModel/Validations/ClassMethods.html
  validates :name, presence: true, length: {minimum: 4, maximum: 10}
  validates :email, presence: true, uniqueness: true #, #format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  #validation
  #callbacks # they are the hooks in active record object life cycle
  #http://guides.rubyonrails.org/active_record_callbacks.html
  #association
  after_validation :very_passwords

  def very_passwords
   if password != confirm_password
       errors.add(:base, 'Password and confirm password is not matching')
   end
  end
  include ActiveModel::Validations

  validate do
    errors.add(:base, 'Admin can not be user name') if name == "Admin"
  end
  def self.authenticate(em, pwd)
    #find_by_name_and_email(em, pwd)
    where(email: em, password: Digest::MD5.hexdigest(pwd))
  end

  before_save :encrypt_password, on: :create
  def encrypt_password
   self.password = Digest::MD5.hexdigest(password)
   self.confirm_password = Digest::MD5.hexdigest(confirm_password)
  end
  # after_save :
  before_destroy :take_backup
  def take_backup
    File.open("#{Rails.root}/public/#{self.id}.json", "a+") {|foo| foo.write(self.to_json)}
  end
end

# on: :create
# or
# :on => "create"
#
# :'digest' => "value"
