require 'rspec'

require_relative '../app/item'
require_relative '../app/virtual_item'

describe Item do

  before(:each) do
    @item = Item.new('kettle', price:200)
  end

  after(:each) do
    @item = nil
  end


  it 'Calculate price according to a special formula' do
    @item.price.to_i.should == 222
  end

  it 'to_s of an object' do
    @item.to_s.should == 'kettle:222.0'
  end

  it 'chack tax calculations' do
    @item.send(:tax).should_not be_nil
  end

end