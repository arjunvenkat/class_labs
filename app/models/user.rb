class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :name, :status

  has_secure_password

  has_many :enlistments, :dependent =>:destroy
end
