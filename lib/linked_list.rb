class LinkedList
  attr_accessor :head, :count #:next_node
  attr_reader :head, :count #:next_node
  
  def initialize
    
    @head = nil
    @count = 0
                      
  end

  def append(sound)
    @count += 1
    if @head.nil?
      @head = Node.new(sound)
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
        current_node.next_node = Node.new(sound)
    end
      return sound
  end
 
  def to_string
    string = ""
    current_node = @head
    until current_node.nil?
      string << "#{current_node.sound} "
      current_node = current_node.next_node
    end
    string.strip 
    #make the list's sounds into a single string
  end

end
