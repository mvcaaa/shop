class StoreApplication
  class << self

    def config
      unless @instance
        yield(self)
        require 'pony'
        require_relative 'string'
        require_relative 'item'
        require_relative 'item_container'
        require_relative 'virtual_item'
        require_relative 'real_item'
        require_relative 'antique_item'
        require_relative 'cart'
        require_relative 'order'
      end
      @instance ||= self
      @instance.freeze
    end

    attr_accessor :name, :environment

    def admin(&block)
      @admin ||= Admin.new(&block)
    end

  end

  class Admin

    class << self

      def new
        unless @instance
          yield(self)
        end
        @instance ||= self
        @instance.freeze
      end

      attr_accessor :email, :login

      def send_info_emails_on(day)
        @send_info_emails_on = day
      end

    end

  end

end