require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe do

it 'exists' do
  jb = JungleBeat.new
  list = LinkedList.new
  expect(jb.list).to be_an_instance_of(JungleBeat)

end


end