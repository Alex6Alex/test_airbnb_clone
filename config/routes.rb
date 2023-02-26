# frozen_string_literal: true

Rails.application.routes.draw do
  root 'accommodations#index'

  devise_for :users

  resources :accommodations, only: %i[index show]

  resources :rental_offers, only: [] do
    resources :bookings, only: :create
  end
end
