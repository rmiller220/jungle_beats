require 'rspec'
require "./lib/linked_list"
require './lib/node'

RSpec.describe do

  it 'exists' do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end 
  
  it 'creates head of linked list' do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end
  
  it 'adds sound to head' do
    list = LinkedList.new
    list.append("doop")
    expect(list.head).to be_an_instance_of(Node)
    expect(list.head.next_node).to eq(nil)
  end
  
  it 'adds data to list' do
    list = LinkedList.new
    list.append("doop")
    expect(list.append("doop")).to eq("doop")
    list.append("boop")
    expect(list.append("boop")).to eq("boop")
    expect(list.head.next_node).to be_an_instance_of(Node)
  end
  
  it 'counts the sounds in a list' do
    list = LinkedList.new
    require 'pry'; binding.pry
    list.append("doop")
    expect(list.count).to eq(1)
    list.append("boop")
    expect(list.count).to eq(2)
  end
  
  it 'convert to a string' do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_string).to eq("doop")
    list.append("boop")
    expect(list.to_string).to eq("doop boop")
  end
  it 'puts new sound at the head' do
    list = LinkedList.new
    list.append("zap")
    expect(list.to_string).to eq("zap")
    list.append("zoo")
    list.prepend("zip")
    expect(list.prepend("zip")).to eq("zip")
    expect(list.to_string).to eq("zip zap zoo")
    expect(list.count).to eq(3)
    
  end
  
  xit 'inserts sound at index position' do
    list = LinkedList.new
    list.append("zap")
    list.append("zoo")
    list.prepend("zip")
    list.insert(1, "woo")
    expect(list.insert(1, "woo")).to eq("woo")
    expect(list.to_string).to eq("zip woo zap zoo")
  end
  
  xit 'finds sound position, returns specified number of sounds' do
    list = LinkedList.new
    list.append("zap")
    list.append("zoo")
    list.append("zoo")
    list.prepend("zip")
    list.insert(1, "woo")
    expect(list.find(2, 1)).to eq("zap")
    expect(list.find(1, 3)).to eq("woo zap zoo")

  end

  xit 'checks if a sound is included in list' do
    list = LinkedList.new
    list.append("zap")
    list.append("zoo")
    list.append("zoo")
    list.prepend("zip")
    list.insert(1, "woo")
    expect(list.to_string).to eq("zip woo zap zoo zoo")
    expect(list.includes?("zip")).to eq(true)
    expect(list.includes?("bop")).to eq(false)

  end

  xit 'removes last sound from the list' do
    list = LinkedList.new
    list.append("zap")
    list.append("zoo")
    list.append("dee")
    list.prepend("zip")
    list.insert(1, "woo")
    expect(list.to_string).to eq("zip woo zap zoo dee")
    list.pop
    expect(list.pop).to eq("dee")
    list.pop
    expect(list.pop).to eq("zoo")
    expect(list.to_string).to eq("zip woo zap")
    
  end


end



