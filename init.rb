require_relative 'store_application'

StoreApplication.new

@items = []
@items << RealItem.new({:name=>'car', :price=>400000, :weight=>1001 })
@items << RealItem.new({:name=>'car', :price=>424000, :weight=>1400 })
@items << RealItem.new({:name=>'kettle', :price=>20, :weight=>4 })
@items << VirtualItem.new({:name=>'coupon', :price=>10000})
@items << AntiqueItem.new({:name=>'ring', :price=>10000})

cart = Cart.new('Andrey')
cart.add_item RealItem.new({:name=>'car', :price=>400000, :weight=>1001 })
cart.add_item RealItem.new({:name=>'car', :price=>424000, :weight=>1400 })
cart.add_item RealItem.new({:name=>'kettle', :price=>20, :weight=>4 })

method = 'all_cars'
p cart.send(method)










