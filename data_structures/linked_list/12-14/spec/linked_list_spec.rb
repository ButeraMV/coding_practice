#> list.head.next_node
#=> nil
#> list.count
#=> 1
#> list.to_string
#=> "doop"

require_relative '../lib/linked_list'
require 'pry'
RSpec.describe 'Linked List' do
  before(:each) do
    @list = LinkedList.new
  end

  it 'can be initialized' do
    expect(@list).to be_instance_of(LinkedList)
  end

  it '#head returns nil called on an empty list' do
    expect(@list.head).to be_nil
  end

  it 'first #append is set to head' do
    @list.append('doop')

    expect(@list.head).to be_instance_of(Node)
    expect(@list.head.next_node).to be_nil
    expect(@list.count).to eq(1)
    expect(@list.to_string).to eq('doop')
  end
end
