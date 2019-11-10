# == Schema Information
#
# Table name: doctors
#
#  id                :bigint           not null, primary key
#  first_name        :string
#  last_name         :string
#  middle_name       :string
#  email             :string
#  phone             :string
#  cabinet           :string
#  date_of_birth     :datetime
#  specialization_id :bigint           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Doctor < ApplicationRecord
  belongs_to :specialization
end
