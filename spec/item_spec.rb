require 'rspec'

require_relative '../app/item'
require_relative '../app/virtual_item'

describe Item do

  before(:all) do
    @item = Item.new('kettle', price:200)
  end


  it 'Calculate price according to a special formula' do
    @item.price.should == 182
  end

  it 'to_s of an object' do
    @item.to_s.should == 'kettle:142.0'
  end

end