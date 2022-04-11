require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it "Will save successfully when all four fields are set" do
      @category = Category.new(name: "furniture")
      @product = Product.new(name: "Spoon", price: 499, quantity: 100, category: @category)
      expect(@product.save).to be true
    end
    it "Will not save when name is missing" do
      @category = Category.new(name: "furniture")
      @product = Product.new(price: 499, quantity: 100, category: @category)
      expect(@product.save).to be false

    end
    it "Will not save when price is missing" do
      @category = Category.new(name: "furniture")
      @product = Product.new(name: "Spoon", quantity: 100, category: @category)
      expect(@product.save).to be false
    end
    it "Will not save when quantity is missing" do
      @category = Category.new(name: "furniture")
      @product = Product.new(name: "Spoon", price: 499, category: @category)
      @product = Product.new(name: "Spoon", quantity: 100, category: @category)
      expect(@product.save).to be false
    end
    it "Will not save when category is missing" do
      @product = Product.new(name: "Spoon", price: 499, quantity: 100)
      expect(@product.save).to be false
    end
  end
end
