require_relative 'store_application'

StoreApplication.config do |app|
  app.name = 'My Store'
  app.environment = :production
  app.admin do |admin|
    admin.email = 'mvc.aaa@gmail.com'
    admin.login = 'admin'
    admin.send_info_emails_on :mondays
  end
end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::admin.email
p StoreApplication::admin.login

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

#method = 'all_cars'
#p cart.send(method)










