require 'rspec'
require_relative '../app/item'
require_relative '../app/virtual_item'
require_relative '../app/antique_item'
require_relative '../app/item_container'
require_relative '../app/cart'


describe Cart do

  describe 'managing items' do

    it 'Add multiple items into the cart' do
      cart = Cart.new('Andrey')
      item1 = Item.new('kettle', price: 200)
      item2 = Item.new('car', price: 200000)
      cart.add_items(item1, item2)
      cart.items.should include(item1, item2)
    end

    it 'remove items from itself' do
      pending
    end

  end


  it 'cart can count items in itself'
  it 'cart can checkout order'
  it 'cart can clean after checkout'


end