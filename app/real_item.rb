class RealItem < Item

  attr_reader :weight

  show_info_about :weight, lambda { |attr| attr > 5 }

  def initialize(name, options = {})
    @weight = options[:weight]
    super(name, options)
  end

  def info
    if !@@show_info_about[:weight] || (@@show_info_about[:weight]).call(weight)
      yield(weight)
    end
    super
  end

  def to_s
    super + ":#{self.weight}"
  end


end