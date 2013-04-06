require 'rspec'
require_relative '../app/item_container'
require_relative '../app/item'
require_relative '../app/virtual_item'

 class ItemBox
   include ItemContainer

   def initialize
     @items = []
   end
 end

 describe ItemContainer do

   before (:each) do
     @box = ItemBox.new
     @item1 = Item.new('kettle', price: 100)
     @item2 = Item.new('car', price: 360000)
   end

   it 'adds items into the container' do
     @box.add_item(@item1)
     @box.add_item(@item2)
     @box.items.should have(2).items
   end

   it 'remove item test' do
     @box.add_item(@item1)
     @box.add_item(@item2)
     @box.remove_item.should be(@item2)
     @box.remove_item
     @box.items.should be_empty
   end

   it 'addItems typo test' do
     lambda { @box.add_item('someting else') }.should raise_error
   end

 end

