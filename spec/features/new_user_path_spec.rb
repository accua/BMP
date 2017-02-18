require 'rails_helper'

describe "the add a user process" do

  it "adds a new user" do
    visit '/users/sign_up'
    fill_in 'user[email]', with: 'guest@guest.com'
    fill_in 'user[username]', with: 'guest'
    fill_in 'user[fullname]', with: 'guest@guest.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    page.attach_file('user[avatar]', Rails.root + 'app/assets/images/yosemite.jpg')
    click_on 'Sign up'
    expect(page).to have_content 'guest'

  end


end
