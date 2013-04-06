require 'rspec'

require_relative '../app/item'
require_relative '../app/virtual_item'

describe Item do

  it 'Calculate price according to a special formula' do
    item = Item.new('kettle', price:100)
    item.price.should == 172
  end
end