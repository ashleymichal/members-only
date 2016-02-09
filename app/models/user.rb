class User < ActiveRecord::Base
	validates :username, :presence => true
	validates :email, :presence => true
	has_many :posts
	has_secure_password

	before_create :create_remember_token
	before_save		:downcase_email

	private

		def create_remember_token
			self.remember_token = Digest::SHA1.hexdigest(SecureRandom.urlsafe_base64.to_s)
		end

		def downcase_email
			self.email = email.downcase
		end
end
