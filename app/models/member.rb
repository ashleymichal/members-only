class Member < ActiveRecord::Base
	has_many :posts
	has_secure_password
end
