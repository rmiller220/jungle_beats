class Node 
  attr_reader :data 
  attr_accessor :next_node
  def initialize(data, next_node = nil)
    @next_node = next_node
    @data = data
    
  end
end
