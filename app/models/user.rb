class User < ApplicationRecord
    validates :name,  presence: true
    validates :email, presence: true
    validates :password_digest, presence: true

    has_secure_password
end
