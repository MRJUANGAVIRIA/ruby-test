class Receipt
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def print
    @items.each do |item|
      puts "#{item.amount} #{item.name}: #{format("%.2f", item.total*item.amount)}"
    end
    puts "Sales Taxes: #{format("%.2f", sales_taxes)}"
    puts "Total: #{format("%.2f", total)}"
  end

  def sales_taxes
    @items.inject(0) { |sum, item| sum + (item.tax*item.amount) }
  end

  def total
    @items.inject(0) { |sum, item| sum + (item.total*item.amount) }
  end
end
