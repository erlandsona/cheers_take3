class Birthday
  def self.parse(birthday)
    return nil if birthday.include("")
    birth_day_arr = birthday.split('/')
    today = Date.today
    if birth_day_arr[1].to_i == 2
      birthday = Date.civil(Date.today.year + 1, birth_day_arr[0].to_i,birth_day_arr[1].to_i)
    else
      birthday = Date.civil(Date.today.year, birth_day_arr[0].to_i,birth_day_arr[1].to_i)
    end
  end
end

