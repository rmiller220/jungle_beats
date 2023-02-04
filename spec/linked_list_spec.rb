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

end



