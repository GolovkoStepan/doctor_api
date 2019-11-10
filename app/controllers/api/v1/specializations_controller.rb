module Api
  module V1
    class SpecializationsController < ApplicationController

      def index
        render json: Specialization.all.map { |entry| { id: entry.id, name: entry.name } }
      end

    end
  end
end
