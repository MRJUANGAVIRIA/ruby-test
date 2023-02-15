require 'rspec'
require_relative '../receipt'
require_relative '../Item'

describe 'Receipt' do
  let(:receipt) { Receipt.new }

  before do
    receipt.add_item(items1)
    receipt.add_item(items2)
    receipt.add_item(items3)
  end

  context 'when have different products' do
    let(:items1) { Item.new('books', 12.49, 0.0, false, 2) }
    let(:items2) { Item.new('music CD', 14.99, 0.1, false, 1) }
    let(:items3) { Item.new('chocolate', 0.85, 0.0, false, 1) }

    it 'calculates all values correctly' do
      expect(receipt.sales_taxes).to eq(1.5)
      expect(receipt.total).to eq(42.32)
    end
  end
end
