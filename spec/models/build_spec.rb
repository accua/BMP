require 'rails_helper'

describe Build do
  it { should belong_to :user }
  it { should have_many :products }
end
