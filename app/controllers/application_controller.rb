class ApplicationController < ActionController::API

  def hello
    render html: "hello, world!"
  end

  def goodbye
    render html: "goodbye!!"
  end
end