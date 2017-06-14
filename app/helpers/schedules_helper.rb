module SchedulesHelper
  def schedule_name(schedule)
    return 'no route' if schedule.positions.empty?
    "#{schedule.positions.try(:first)} - #{schedule.positions.try(:last)}"
  end
end
