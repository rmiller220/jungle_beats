class JungleBeat
  attr_accessor :list, :voice, :rate
  
  def initialize()
    @list = LinkedList.new
  end
    
  def append(data)
    array_of_data = data.split
    array_of_data.each do |data| 
      list.append(data)
    end
    data
  end
  
  def count
    list.count
  end
  
  def play
    sound_list = list.to_string
    p `say -r 1200 -v Samantha #{sound_list}`
  end
  
end