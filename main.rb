require_relative './receipt'
require_relative './item'

receipt = Receipt.new

puts "Please, write  'calculate' to finish the purchase"

while true do
  puts 'Enter new product:'
  item_string = gets.chomp
  break if item_string == 'calculate'

  amount, price = item_string.scan(/[£$]\d+,\d+\.\d+|\d+\.\d+|\d+/)
  name =  item_string.gsub('at ', '').gsub('.', '').gsub( /\d+/,'').strip
  imported = name.downcase.include?('imported')
  tax_rate = imported ? 0.15 : 0.1
  dictionary_exceptions = ['book', 'food', 'medical', 'chocolate', 'chocolates', 'headache', 'pills']
  tax_rate -= 0.1 if dictionary_exceptions.map{ |o| name =~ /\b#{Regexp.escape(o)}\b/ }.any?
  item = Item.new(name, price.to_f, tax_rate, imported, amount.to_i)
  receipt.add_item(item)
end

receipt.print
