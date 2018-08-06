require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(first_name: 'Ahmed', last_name: 'Specter', email: 'mail@gmail.com')
	end

	test 'invalid with empty first name' do
		user = User.new(first_name: '',last_name: 'Specter', email: 'example@google.org')
		assert_not user.save
	end

	test 'invalid with spaces as first name' do
		user = User.new(first_name: '   ', last_name: 'Specter', email: 'example@google.org')
		assert_not user.save
	end

	test 'invalid with empty last name' do
		user = User.new(first_name: 'Ahmed',last_name: '', email: 'example@google.org')
		assert_not user.save
	end

	test 'invalid with spaces as last name' do
		user = User.new(first_name: 'Ahmed', last_name: '   ', email: 'example@google.org')
		assert_not user.save
	end

	test 'invalid email. it should be unique' do
		duplicate_user = @user.dup
		@user.save
		assert_not duplicate_user.valid?
	end

end