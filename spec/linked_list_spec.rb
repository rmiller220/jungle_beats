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

  it 'adds data to list' do
    list = LinkedList.new
    expect(list.append("doop")).to eq("doop")
    expect(list.append("boop")).to eq("boop")
  end
  
  it 'counts the sounds in a list' do
    list = LinkedList.new
    expect(list.append("doop")).to eq("doop")
    expect(list.count).to eq(1)
    expect(list.append("boop")).to eq("boop")
    expect(list.count).to eq(2)
    
  end
  
 

end



