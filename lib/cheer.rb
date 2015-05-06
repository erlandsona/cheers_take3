class Cheer
  def self.for_person(name)
    raise ArgumentError unless valid_name?(name)
    cheer = ""
    cheerable_name = name.upcase.gsub(/[^A-Z]/, "")
    cheerable_name.each_char do |char|
      if "HALFNORSEMIX".include?(char)
        article = "n.."
      else
        article = "..."
      end
      cheer << "Give me a#{article} #{char}!\n"
    end
    cheer << "#{name}'s just GRAND!"
  end


  def self.valid_name?(name)
    cheerable_name = name.upcase.gsub(/[^A-Z]/, "")
    !cheerable_name.empty?
  end








end
