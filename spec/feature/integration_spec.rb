# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Adding an Author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K.'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Rowling')
  end
end

RSpec.describe 'Adding a Price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Price', with: 24.5
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(24.5)
  end
end

RSpec.describe 'Adding a Date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Date', with: Date.new(2022,9,12)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(Date.new(2022,9,12))
  end
end