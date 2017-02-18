require 'rails_helper'

describe "the product detail path" do

  it "tests the product detail route" do
    user = create(:user)
    product = create(:product)
    visit 'products#index'
    click_on 'Go Lite Bag'
    expect(page).to have_content 'Product Description'
  end


end
