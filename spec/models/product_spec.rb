require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "attributes" do
    let!(:category) { Category.create!(name: "Technology") }
    let!(:product) { Product.create!(name: "Technology", description: "Test Description", price: 100.00, category: category) }

    it "should create a product with valid input fields" do
      expect(product).to be_present
    end

    required_fields = [:name, :description, :price, :category_id]
    required_fields.each do |field|
      it "should not create a product if #{field} is blank" do
        invalid_product = create(:product, category: category)
        invalid_product[field] = nil
        expect(invalid_product).to_not be_valid
      end
    end

    it "should not create a product if price is not a number" do
      invalid_product = create(:product, category: category)
      invalid_product[:price] = "String"
      invalid_product.valid?
      expect(invalid_product.errors.messages[:price]).to include("is not a number")
      expect(invalid_product).to_not be_valid
    end
  end
end
