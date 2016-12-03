class User < ApplicationRecord
    has_secure_password
    has_many :user_schemes
    has_many :schemes, through: :user_schemes
end
