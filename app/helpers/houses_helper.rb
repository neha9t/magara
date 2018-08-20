module HousesHelper
  # Form saves gender information with integer
  # This function helps to return the integer to string.
  #
  #   int_to_gender(@house.preferred_gender)
  #   # => 'Either'
  def int_to_gender(int)
    case int
    when 0
      'Either'
    when 1
      'Female'
    when 2
      'Male'
    end
  end

  # Visualize boolean value with checkmark or cross
  # HTML entity. If the +value+ is true, it returns checkmark.
  # Otherwise, it returns cross sign.
  #
  #   check_it(@house.checkbox.refrigerator)
  #   # => '&checkmark;'
  def check_it(value)
    value = case value
            when true
              '&checkmark;'
            else
              '&cross;'
    end

    value.html_safe
  end
end
