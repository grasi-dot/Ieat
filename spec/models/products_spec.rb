require 'rails_helper'

RSpec.describe Product do
  it { should belong_to(:restaurant)}
end