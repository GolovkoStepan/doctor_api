# == Schema Information
#
# Table name: appointments
#
#  id             :bigint           not null, primary key
#  doctor_id      :bigint           not null
#  user_id        :bigint           not null
#  start_datetime :datetime
#  end_datetime   :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user, optional: true
end
