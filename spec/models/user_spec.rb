require 'rails_helper'

RSpec.describe User, type: :model do
  it "users email" do
    @user = User.create!(email: "petrov@mail.ru", password: "123456")
    expect(@user.email).to eq("petrov@mail.ru")
  end
end