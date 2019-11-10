module Api
  module V1
    class DoctorsController < ApplicationController

      def index
        if params[:specialization].present?
          spec = Specialization.find(params[:specialization])
          render json: spec.doctors || { message: "Not found with specialization id = #{params[:specialization]}" }
        else
          render json: Doctor.all
        end
      end

      def show
        doctor = Doctor.find(params[:id])

        if doctor.present?
          render json: doctor
        else
          render json: { message: "Not found with id = #{params[:id]}." }
        end
      end

    end
  end
end
