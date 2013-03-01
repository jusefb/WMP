module CalendarHelper
  def self.create_wm(currentDate)
    for i in 1..7
      dayObject = Day.new
      dayObject.day = currentDate
      dayObject.date = currentDate.strftime('%A')
      dayObject.title =  currentDate.strftime('%A') + ' (' + currentDate.strftime('%d/%m/%Y') + ')'
      dayObject.week_no = currentDate.strftime('%U')
      dayObject.save

      currentDate = currentDate + 1
    end
  end
end
