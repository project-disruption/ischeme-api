class Scheme < ApplicationRecord
    has_many :user_schemes
    has_many :users, through: :user_schemes
end
