module SchedulesHelper
  def schedule_name(schedule)
    return 'no route' if schedule.positions.empty?
    first_station_name = schedule.positions.first.station.name
    last_station_name = schedule.positions.first.station.name
    "#{first_station_name} - #{last_station_name}"
  end
end
