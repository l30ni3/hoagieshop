# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do

  # it 'is valid with valid attributes' do
  #   expect(User.new).to be_valid
  # end

  it "should have valid factory" do
    FactoryBot.build(:user).should be_valid
end

  it 'is not valid without a userID' do
    user = build(:user, userID: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without a name' do
    user = build(:user, name: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without a surName' do
    user = build(:user, surName: nil)
    expect(user).to_not be_valid
  end
end
