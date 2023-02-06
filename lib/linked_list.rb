class LinkedList
  attr_accessor :head
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  def count
    count = 0
    current_node = @head
    until current_node.nil?
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def prepend(data)
    current_head = @head
    @head = Node.new(data)
    @head.next_node = current_head
    data
  end
  

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
        current_node.next_node = Node.new(data)
    end
      return data
  end
 
  def to_string
    string = ""
    current_node = @head
    until current_node.nil?
      string << "#{current_node.data} "
      current_node = current_node.next_node
    end
    string.strip 
  end
  def insert(index, data)
    current_node = @head
    (index - 1).times do
      # if current_node.nil
        current_node = current_node.next_node
      end
      new_node = Node.new(data)
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
      #add a new data to node, and choose the position
  end
  def includes?(data)
    self.to_string.include?(data)
    # check to see if the string array includes a specific data
  end
  def find(index, number)
    array = self.to_string.split(" ") #
    array[index..index + number].join(" ")
    #pick a spot in the array, list that sound and the determined number of sounds after
  end
  

end
