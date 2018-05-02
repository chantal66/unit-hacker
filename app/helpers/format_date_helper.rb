module FormatDateHelper
  def format_date(datetime)
    datetime.try(:strftime, "%m/%d/%y")
  end
end