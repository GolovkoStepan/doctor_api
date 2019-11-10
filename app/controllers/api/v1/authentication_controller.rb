module Api
  module V1
    class AuthenticationController < ApplicationController
      skip_before_action :authenticate_request

      def authenticate
        command = AuthenticateUser.call(params[:phone], params[:password])

        if command.success?
          render json: { auth_token: command.result }
        else
          render json: { error: command.errors }, status: 401
        end
      end

      def registration
        if params[:user].nil?
          render json: { message: "Request is not contains user data." }, status: 400
        else
          user_params = permit_user_params
          user = User.new(user_params)

          if user.save
            render json: { message: "User created succesfully" }, status: 200
          else
            render json: { message: user.errors.full_messages }, status: 400
          end
        end
      end

      private

      def permit_user_params
        params.require(:user).permit(:first_name, :last_name, :middle_name, :email,
                                     :phone, :address, :date_of_birth, :med_insurance, :password)
      end

    end
  end
end
