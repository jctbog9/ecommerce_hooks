require 'rails_helper'

RSpec.describe User, type: :model do
  describe "attributes" do
    it "should create a user if valid email is provided" do
      user = create(:user, email: "1234@gmail.com")
      expect(user.valid?).to eq(true)
    end
    it "should not create a user if valid email is not provided" do
      user = create(:user)
      user[:email] = ""
      user.valid?
      expect(user.errors.messages[:email]).to include("can\'t be blank")
    end
    it "should create a user if valid password is provided" do
      user = User.create(email: "1234@gmail.com", password: "123456")
      expect(user.valid?).to eq(true)
    end
    it "should not create a user if valid email is provided" do
      user = User.create(email: "1234@gmail.com", password: "")
      expect(user.valid?).to eq(false)
    end
  end
end
