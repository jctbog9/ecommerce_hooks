require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "attributes" do
    it "should create a category with valid input fields" do
      category = Category.create!(name: "Technology")
      expect(category).to be_present
    end

    it "should not create a category if required fields are blank" do
      invalid_category = Category.create(name: "Technology")
      invalid_category[:name] = ""
      invalid_category.valid?
      expect(invalid_category).to_not be_valid
    end
  end
end
