class User < ApplicationRecord
	validates :first_name, presence: true, length: {minimum: 2}
	validates :last_name, presence: true, length: {minimum: 2}
	validates :email, presence: true, uniqueness: true, length: {minimum: 6}
end