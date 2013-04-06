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

@items = []
@items << RealItem.new({:name=>'car', :price=>400000, :weight=>1001 })
@items << RealItem.new({:name=>'car', :price=>424000, :weight=>1400 })
@items << RealItem.new({:name=>'kettle', :price=>20, :weight=>4 })

=begin
cart = Cart.new('Andrey')
cart.add_item RealItem.new({:name=>'car', :price=>400000, :weight=>1001 })
cart.add_item RealItem.new({:name=>'car', :price=>424000, :weight=>1400 })
cart.add_item RealItem.new({:name=>'kettle', :price=>20, :weight=>4 })
=end

order = Order.new
@items.each { |i| order.add_item(i) }

#order.place










