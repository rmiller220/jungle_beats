class Node 
  attr_reader :data #could be sound
  attr_accessor :next_node
  def initialize(data)
    @data = data
    @next_node = nil
  end
end
