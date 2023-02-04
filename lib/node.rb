class Node 
  attr_reader :sound 
  attr_accessor :next_node
  def initialize(sound, next_node = nil)
    @next_node = next_node
    @sound = sound
    
  end
end
