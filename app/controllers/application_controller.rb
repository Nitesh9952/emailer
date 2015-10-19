class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def email
    render text: EJS.evaluate(File.read('app/views/email.ejs'), :name => "world")
  end
end
