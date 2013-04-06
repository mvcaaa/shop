require 'rspec'
require_relative '../app/item'
require_relative '../app/virtual_item'
require_relative '../app/real_item'


describe RealItem do

  it 'ret attr on some condition' do
    item1 = RealItem.new('kettle', price: 20, weight: 2)
    item2 = RealItem.new('kettle', price: 20, weight: 7)
    item1_info = []
    item2_info = []
    item1.info { |attr| item1_info << attr }
    item2.info { |attr| item2_info << attr }
    item1_info.join(', ').should == '20, kettle'
    item2_info.join(', ').should == '7, 20, kettle'
  end
end