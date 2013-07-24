require 'spec_helper'

feature 'Creating Questions' do
  scenario "can create a question" do
  visit '/'
  click_link 'New Question'
  fill_in 'Inquiry', :with => 'TextMate 2'
  fill_in 'Answer', :with => "A text-editor for OS X"
  click_button 'Create Question'
  page.should have_content('Question has been created.')
  end
end
