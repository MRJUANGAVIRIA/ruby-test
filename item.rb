class Item
  attr_reader :name, :price, :tax_rate, :imported, :amount

  def initialize(name, price, tax_rate, imported, amount = 1)
    @name = name
    @price = price
    @tax_rate = tax_rate
    @imported = imported
    @amount = amount
  end

  def tax
    ((@price * @tax_rate).round(2) * 20).ceil / 20.0
  end

  def total
    @price + tax
  end
end
