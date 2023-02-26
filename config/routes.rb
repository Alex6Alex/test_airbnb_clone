# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'accommodations#index'
end
