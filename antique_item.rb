class AntiqueItem < Item
  def to_s
    "#{self.name}:#{self.price}"
  end

end
