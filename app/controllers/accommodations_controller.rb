# frozen_string_literal: true

class AccommodationsController < ApplicationController
  def index
    @accommodations = Accommodation.joins(:rental_offers).preload(:rental_offers)

    @accommodations = @accommodations.where.not(user: current_user) if current_user.present?
  end

  def show
    @accommodation = Accommodation.find(params[:id])

    @booking = Booking.new
  end
end
