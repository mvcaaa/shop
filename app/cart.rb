class Cart
  attr_reader :items

  include ItemContainer

  class ItemNotSupported < StandardError; end
  UNSUPPORTED_ITEMS = [AntiqueItem, VirtualItem]

  # @return [Object]
  def initialize(owner)
    @items = Array.new
    @owner = owner
  end

  def add_items(*items)
    @items += items
  end

  # @return [Object]
  def save_to_file
    File.open("#{@owner}_cart.txt", 'w') do |f|
      @items.each do |i|
        raise ItemNotSupported if UNSUPPORTED_ITEMS.include?(i.class)
        f.puts i
      end
    end
  end

  # @return [Object]
  def read_from_file
    File.readlines("#{@owner}_cart.txt").each { |i| @items << i.to_real_item }
    @items.uniq!
  rescue Errno::ENOENT
    File.open("#{@owner}_cart.txt", 'w') {}
    puts 'New cart file created'
  end
end