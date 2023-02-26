# frozen_string_literal: true

class AccommodationsController < ApplicationController
  def index
    @accommodations = Accommodation.all

    @accommodations = @accommodations.where.not(user: current_user) if current_user.present?
  end

  def show
    @accommodation = Accommodation.find(params[:id])
  end
end
