# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
    described_class.new(author: 'J.K.')
    described_class.new(price: 24.5)
    described_class.new(date: Date.new(2022,9,12))
  end

  it 'is valid with valid attributes title' do
    expect(subject.title).to be_valid
  end

  it 'is valid with valid attributes author' do
    expect(subject.author).to be_valid
  end

  it 'is valid with valid attributes price' do
    expect(subject.price).to be_valid
  end

  it 'is valid with valid attributes date' do
    expect(subject.date).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end