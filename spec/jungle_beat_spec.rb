require "rspec"
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe do

  it 'exists' do
    jb = JungleBeat.new
    list = LinkedList.new
    # require 'pry'; binding.pry
    expect(jb.list).to be_an_instance_of(LinkedList)
    expect(jb.list.head).to eq(nil)
  end

  it 'adds to jb' do
    jb = JungleBeat.new
    list = LinkedList.new
    expect(jb.append("zip zap zoo")).to eq("zip zap zoo")
    expect(jb.list.head.data).to eq("zip")
    expect(jb.list.head.next_node.data).to eq("zap")
  end

  it 'defines count method' do
    jb = JungleBeat.new
    list = LinkedList.new
    jb.append("zip zap zoo")
    require 'pry'; binding.pry
    expect(jb.count).to eq(3)
    jb.append("dip dap doo")
    expect(jb.count).to eq(6)
  end
  
  it 'defines a play method' do
    jb = JungleBeat.new
    list = LinkedList.new
    jb.append("zip zap zoo dip dap doo")
    expect(jb.count).to eq(6)
    jb.play
  
  end

end