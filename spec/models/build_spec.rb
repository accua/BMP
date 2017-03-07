require 'rails_helper'

describe Build do
  it { should have_many :users }
  it { should have_many :products }
end
