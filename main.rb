require_relative './receipt'
require_relative './item'

receipt = Receipt.new

puts 'Enter the number different type of items you want to purchase:'
number_of_items = gets.chomp.to_i

number_of_items.times do
  puts "Enter the amount of the item:"
  amount = gets.chomp.to_i
  puts "Enter the name of the item:"
  name = gets.chomp
  puts "Enter the price of the item:"
  price = gets.chomp.to_f
  imported = name.downcase.include?('imported')
  tax_rate = imported ? 0.15 : 0.1
  dictionary_exceptions = ['book', 'food', 'medical', 'chocolate', 'chocolates', 'headache', 'pills']
  tax_rate -= 0.1 if dictionary_exceptions.map{ |o| name =~ /\b#{Regexp.escape(o)}\b/ }.any?
  item = Item.new(name, price, tax_rate, imported, amount)
  receipt.add_item(item)
end

receipt.print
