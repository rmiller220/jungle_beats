require 'rspec'
require './lib/node'


RSpec.describe Node do

  it 'exists' do
    node = Node.new("plop")
    expect(node).to be_an_instance_of(Node)
    expect(node.sound).to eq("plop")
  # require 'pry'; binding.pry
  end

  it 'finds next node' do
    node = Node.new("plop")
    expect(node.next_node).to eq(nil)
    # require 'pry'; binding.pry
  end

end


