require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(:username => 'BobBelcher',
										 :email => 'bob@burgers.com',
										 :password => 'burgermaster',
										 :password_confirmation => 'burgermaster')
	end

	test '#valid? fails when password != password_confirmation' do
		@user.password_confirmation = 'doesntmatch'
		assert @user.valid? == false
	end

	test '#valid? fails when email is wrong format'

	# test '#valid? fails when name is blank'
end
