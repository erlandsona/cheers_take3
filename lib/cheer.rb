require_relative 'birthday'
class Cheer
  def self.for_person(name)
    cheerable_name = name.upcase.gsub(/[^A-Z]/, "")
    raise ArgumentError if cheerable_name.empty?
    cheer = ""
    cheerable_name.each_char do |char|
      "HALFNORSEMIX".include?(char) ? article = "n.." : article = "..."
      cheer << "Give me a#{article} #{char}!\n"
    end
    cheer << "#{name}'s just GRAND!"
  end

  def self.for_birthday(birthday)
    today = Date.today
    next_birthday = Birthday.parse(birthday)
    difference = next_birthday - today
    case difference
    when 0
    # Today is their birthday
    when 1
    #Use the singular?
    else
    #Use the plural?
    end
  end

end
