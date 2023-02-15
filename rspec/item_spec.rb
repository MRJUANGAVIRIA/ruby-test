require 'rspec'
require_relative '../Item'

describe 'Item' do
  context 'for books' do
    let(:item) { Item.new('books', 12.0, 0, false, 1) }

    it 'calculates tax correctly' do
      expect(item.tax).to eq(0.0)
    end

    it 'calculates total price correctly' do
      expect(item.total).to eq(12.0)
    end
  end

  context 'for local food' do
    let(:item) { Item.new('food', 1.0, 0, false, 1) }

    it 'calculates tax correctly' do
      expect(item.tax).to eq(0.0)
    end

    it 'calculates total price correctly' do
      expect(item.total).to eq(1.0)
    end
  end

  context 'for imported food' do
    let(:item) { Item.new('chocolate', 0.85, 0.05, true, 1) }

    it 'calculates tax correctly' do
      expect(item.tax).to eq(0.05)
    end

    it 'calculates total price correctly' do
      expect(item.total).to eq(0.9)
    end
  end
end