# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  first_name      :string
#  last_name       :string
#  middle_name     :string
#  email           :string
#  phone           :string
#  address         :string
#  med_insurance   :string
#  password_digest :string
#  date_of_birth   :datetime
#  role            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null

class User < ApplicationRecord
  has_many :appointments

  before_create :set_role

  validates :first_name, :last_name, :middle_name, :email, :phone,
            :address, :med_insurance, :date_of_birth, presence: true

  validates :email, :phone, :med_insurance, uniqueness: true

  enum role: %i[patient admin]

  has_secure_password

  private

  def set_role
    self.role = :patient
  end

end
