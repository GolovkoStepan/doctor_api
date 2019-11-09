class User < ApplicationRecord
  has_many :appointments

  enum role: %i[patient admin]

  has_secure_password
end
