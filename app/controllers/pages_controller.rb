class PagesController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!, only: :admin

  def home
  end
  def admin
    authorize! :admin, current_user.type == 'Admin'
  end
end
