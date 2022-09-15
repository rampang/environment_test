require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: nil
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(nil)
  end
end
