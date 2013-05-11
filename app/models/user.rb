class User < ActiveRecord::Base
	attr_accessible :email, :name, :password, :password_confirmation
	has_secure_password #funciton enkripsi, pengecekan password konfirm
	validates :name, presence: true, length:{maximum: 20}

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX}, uniqueness: true
	validates :password, presence: true
	validates :password_confirmation, presence: true, length:{minimum: 6}
end