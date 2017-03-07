require 'rails_helper'

describe Product do
  it { should have_many(:users).through :comments }
  it { should have_many :comments}
  it { should validate_presence_of :name }
  it { should have_many :builds }
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }
end
