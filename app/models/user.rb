class User < ApplicationRecord
    has_secure_password

    # model associations
    has_many :todos, foreign_key: :created_by
    # validations
    validates_presence_of :name, :email, :password_digest
end
