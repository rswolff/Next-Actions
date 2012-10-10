class User < ActiveRecord::Base
  attr_accessible :crypted_password, :email, :first_name, :last_name, :salt
end
