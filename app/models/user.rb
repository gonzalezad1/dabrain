require 'bcrypt'

class User < ActiveRecord::Base

	has_secure_password

	has_many :questions
	has_many :answers
	has_many :answervotes
	has_many :questionvotes

	validates :username, presence: true, length: { minimum: 4 }
	validates :firstname, presence: true, length: { minimum: 4 }
	validates :lastname, presence: true, length: { minimum: 4 }
	validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/,
	    message: "Please enter a valid email!" }
	# validates :password_digest, presence: true, length: { in: 4..60 }

	def self.user_auth(email,password)
		@user = User.find_by(email: email)
	   if @user && @user.authenticate(password)
	     return @user
	   else
	     return false
	   end
	end

end
