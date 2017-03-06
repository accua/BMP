require 'rails_helper'

describe Mailchimp, :vcr => true do
  it 'adds an error if no email is attached' do
    mailchimp = Mailchimp.new('', 'john', 'doe').new_sub
    expect(mailchimp).to eq 'Blank email address'
  end
end
