# typed: strict
# frozen_string_literal: true

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # == Redirects
  constraints subdomain: "www" do
    get "(*any)" => redirect(subdomain: "", status: 302)
  end

  # == Healthcheck
  Healthcheck.routes(self)

  # == Good Job
  if Rails.env.development?
    mount GoodJob::Engine => "/good_job"
    # else
    #   authenticate :user, ->(user) {
    #     user = T.let(user, User)
    #     user.admin?
    #   } do
    #     mount GoodJob::Engine => "/good_job"
    #   end
  end

  # == Devise
  devise_for :users, only: []
  # devise_for :users,
  #            skip: %i[sessions confirmations passwords],
  #            controllers: {
  #              omniauth_callbacks: "users/omniauth_callbacks",
  #              registrations: "users/registrations",
  #            },
  #            path: "/user",
  #            path_names: {
  #              sign_up: "register",
  #              edit: "settings",
  #            }
  # devise_scope :user do
  #   resource :sessions,
  #            path: "/",
  #            module: "users",
  #            as: :user_session,
  #            only: [] do
  #              get :login, action: :new, as: :new
  #              post :login, action: :create, as: ""
  #              post :logout, action: :destroy, as: :destroy
  #            end
  #   scope :user, module: "users", as: :user do
  #     resource :confirmation,
  #              only: %i[new show],
  #              path: "/verification",
  #              path_names: {
  #                new: "resend",
  #              }
  #     resource :password,
  #              only: %i[new edit update],
  #              path_names: {
  #                new: "reset",
  #                edit: "change",
  #              }
  #   end
  # end

  # == GraphQL
  scope :graphql, controller: :graphql do
    get "/", action: :graphiql, as: :graphiql
    post "/", action: :execute, as: :graphql
  end

  # == Apply
  get "/apply" => redirect("https://tally.so/r/w7NKvR")

  # == Errors
  scope controller: :errors do
    match "/401", action: :unauthorized, via: :all
    match "/404", action: :not_found, via: :all
    match "/422", action: :unprocessable_entity, via: :all
    match "/500", action: :internal_server_error, via: :all
  end

  # == Pages
  root "home#show"
  get "/src" => redirect(
    "https://github.com/hulloitskai/launchweek",
    status: 302,
  )
  get "/ideas" => redirect(
    "https://www.figma.com/community/file/1298426462618518881/launchweek-idea-slide",
    status: 302,
  )
  get "/sesh1" => redirect(
    "https://tally.so/r/wo2VGP",
    status: 302,
  )

  # == Development
  if Rails.env.development?
    get "/test" => "test#show"
    get "/mailcatcher" => redirect("//localhost:1080", status: 302)
  end
end
