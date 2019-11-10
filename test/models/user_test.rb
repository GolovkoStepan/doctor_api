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
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
