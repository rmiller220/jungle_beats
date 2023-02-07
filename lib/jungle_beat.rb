class JungleBeat
  attr_accessor :list
  
  def initialize()

    @list = LinkedList.new


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
  
end