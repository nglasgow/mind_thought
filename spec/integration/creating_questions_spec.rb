require 'spec_helper'

feature 'Creating Questions' do
  before do
    visit '/'
    click_link 'New Question'
  end

  scenario "can create a question" do
  fill_in 'Inquiry', :with => 'Where are you going?'
  fill_in 'Answer', :with => "To the CodeFellows office"
  click_button 'Create Question'
  page.should have_content('Question has been created.')

  #question = Question.find_by_inquiry("TextMate 2")
  #page.current_url.should == question_url(question)
  #title = "TextMate 2 - Questions - Mind Thought"
  #find("title").should have_content(title)
  end

  scenario "can not create a question without an inquiry" do
    click_button 'Create Question'
    page.should have_content("Question has not been created.")
    page.should have_content("Inquiry can't be blank")
  end
end
