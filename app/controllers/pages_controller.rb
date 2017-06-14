class PagesController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!, only: :admin

  def home
    @schedules = Schedule.all
    @staffs = Staff.all
    @stations = Station.all
    @trains = Train.all
  end

  def admin
    authorize! :admin, current_user.admin?
  end
end
