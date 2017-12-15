require_relative '../lib/node'
require 'pry'
RSpec.describe 'Node' do
  before(:each) do
    @node = Node.new('plop')
  end

  it 'can be initialized' do
    expect(@node).to be_instance_of(Node)
  end

  it 'returns data that the node was initialized with' do
    expect(@node.data).to eq('plop')
  end

  it 'returns nil if there is no next node' do
    expect(@node.next_node).to be_nil
  end
end
