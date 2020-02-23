module BuildingsHelper
  def check_floor_number(number)
    case number
    when 1
      "first"
    when 2
      "second"
    when 3
      "third"
    else
        "#{number}th"
    end
    
  end
end
