Rails.application.routes.draw do


  # Edits current user's checkin so that they're checkout out per the Checkin/check_out action
  post("checkins/:id/check_out", { :controller => "checkins", :action => "check_out"})

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :requests

  resources :checkins

  resources :songs

  resources :reviews

  resources :performances

  resources :venues

  devise_for :users

  devise_scope :user do
    root "devise/registrations#edit"
  end

end
