# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes title' do
    expect(subject).to be_valid
  end

  subject do
    described_class.new(title: 'harry potter2', author: 'j.k.')
  end

  it 'is valid with valid attributes title and author' do
    expect(subject).to be_valid
  end

  subject do
    described_class.new(title: 'harry potter2', author: 'j.k.', price: 23.2)
  end

  it 'is valid with valid attributes title, author, price' do
    expect(subject).to be_valid
  end

  subject do
    described_class.new(title: 'harry potter2', author: 'j.k.', price: 23.2, date: Date.new(2/2/2022))
  end

  it 'is valid with valid attributes title, author, price, date' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end