class Order
  attr_reader :items

  include ItemContainer

  def initialize
    @items = Array.new
  end

  def place
    thr = Thread.new do
      Pony.mail({
                    :to => StoreApplication::Admin.email,
                    :from => 'mvc.aaa@gmail.com',
                    :via => :smtp,
                    :via_options => {
                        :address => 'smtp.gmail.com',
                        :port => '587',
                        :user_name => 'mvc.aaa@gmail.com',
                        :password => 'some_pass_here',
                        :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
                        :domain => 'mail.google.com' # the HELO domain provided by the client to the server
                    },
                    :subject => 'New order have been placed',
                    :body => 'PLease process it'
                })
    end
    while thr.alive?
      print ".\r"
      print 13.chr; sleep 0.01
    end
  end

end