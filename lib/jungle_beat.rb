class JungleBeat
  attr_accessor :list, :voice, :rate
  
  def initialize()

    @list = LinkedList.new
    @voice = "Boing"
    @rate = 500

  end
    
  def append(data)
    array_of_data = data.split #creates an array that splits a given string into an array of substrings at the spaces
    array_of_data.each do |data| #
      list.append(data)
    end
    data
  end
  def count
    list.count
  end
  def play
    sound_list = list.to_string
    p `say -r 1000 -v Samantha #{sound_list}`
  end
  
end