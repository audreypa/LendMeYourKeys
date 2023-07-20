module ApplicationHelper
  # change format
  def date_format(date)
    date.strftime('%d %b %y')
  end

  def number_to_euro(number)
    number_to_currency(number, unit: '€', separator: ',', delimiter: ' ')
  end

  def car_side_icon
    "#{icon_class('car-side')}"
  end

  def car_icon
    "#{icon_class('car')}"
  end

  def check_icon
    "#{icon_class('check')}"
  end

  private

  def icon_class(icon)
    "fa-solid fa-#{icon}"
  end
end
