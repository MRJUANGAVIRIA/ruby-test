# Torc Ruby test
To run manually the main file with:
`ruby main.rb`
When the script starts, you need to pass on product information, for example:
- 3 book at 12.49
- 1 music CD at 14.99
- 1 chocolate at 0.99

When you finish to enter product data and you want to resolve the purchase, you need to write 'calculate'the software will be return something like that:
```
3 book: 37.47
1 music CD: 16.49
1 chocolate: 0.99
Sales Taxes: 1.50
Total: 54.95
```

To run the all rspec test:
`rspec rspec/`

Or you can run the test individually:
- `rspec rspec/item_spec.rb`
- ` rspec rspec/receipt_spec.rb`
