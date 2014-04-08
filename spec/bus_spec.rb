require 'spec_helper'

describe Bus do
  it { should belong_to :line }
  it { should have_many :stops }
  it { should have_many :arrivals }
end
