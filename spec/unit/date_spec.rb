require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Anything', author: 'Anything', price: 'Anything', published_date: Date.new(2007, 11, 10))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a price' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end
