# frozen_string_literal: true

class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_rental_offer

  def create
    booking = @rental_offer.bookings.new(user: current_user)

    if booking.save
      redirect_to(accommodation_path(@rental_offer.accommodation_id), notice: t('.successful'))
    else
      redirect_to(accommodation_path(@rental_offer.accommodation_id), alert: t('.error'))
    end
  end

  private

  def set_rental_offer
    @rental_offer = RentalOffer.find(params[:rental_offer_id])
  end
end
