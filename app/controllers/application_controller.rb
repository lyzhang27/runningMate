class ApplicationController < ActionController::API
  include ActionController::RequestForgeryProtection

  # before_action :authenticate_user!
  protect_from_forgery with: :null_session

  def hello
    render html: "hello, world!"
  end

  def goodbye
    render html: "goodbye!!"
  end
end