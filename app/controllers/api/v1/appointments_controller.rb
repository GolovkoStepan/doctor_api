module Api
  module V1
    class AppointmentsController < ApplicationController

      def index
        if params[:doctor_id].nil? || params[:date].nil?
          return render json: { message: "Request is not contains data (doctor_id, date)." }
        end

        doctor = Doctor.find(params[:doctor_id])
        date_start = Date.parse(params[:date]).to_datetime
        date_end = Date.parse(params[:date]).to_datetime + 23.hours + 59.minutes

        render json: Appointment.where(doctor: doctor).where({ start_datetime: date_start..date_end })
      end

      def make
        appointment = Appointment.find(params[:id])
        if appointment.present? && appointment.free?
          appointment.update_attribute(:user, current_user)
          render json: { message: "Success" }
        else
          render json: { message: "This appointment is already taken or not found" }
        end
      end

      def cancel
        appointment = Appointment.find(params[:id])
        if appointment.present? && appointment.user == current_user
          appointment.update_attribute(:user, nil)
          render json: { message: "Success" }
        else
          render json: { message: "This appointment is already taken by other user or not found" }
        end
      end

      def user_appointments_list
        render json: Appointment.where(user: current_user)
      end

    end
  end
end
