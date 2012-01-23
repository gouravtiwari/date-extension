class Date
  def next_wednesday
    date = self
    while !date.wednesday?
      date = date.next
    end
    return date
  end

  def self.wednesday_of_week_in_year(week, year)
  	date = Date.new(year, 1, 1)
  	date.next_wednesday + ((week-1) * 7)
  end
end