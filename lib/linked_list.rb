class LinkedList
  attr_accessor :head, :next_node
  attr_reader :head, :next_node
  
  def initialize
    
    @head = nil
    @next_node = nil
    @tail = nil
    # @count = 0
  end

  def count
    count = 0
    if list.append
      count += 1
    end
  end
    #count the number of objects in list
  
  def to_string
    
    #make sound into a string
  end
    
  def append(sound)
    Node.new(sound) 
    if @head == nil
       @head = sound 
    elsif @head = sound
      @next_node = sound
    else @next_node = sound
      @next_node = @tail
    end
  end
    
    # input data into the list array

end
