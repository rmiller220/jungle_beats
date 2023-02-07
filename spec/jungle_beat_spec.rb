require "rspec"
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe do

it 'exists' do
  jb = JungleBeat.new
  list = LinkedList.new
   require 'pry'; binding.pry
  expect(jb.list).to be_an_instance_of(LinkedList)
  expect(jb.list.head).to eq(nil)
end

it 'adds to jb' do
  jb = JungleBeat.new
  list = LinkedList.new
  expect(jb.append("zip zap zoo")).to eq("zip zap zoo")

end


end