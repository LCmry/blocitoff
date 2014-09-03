require 'rails_helper'

feature 'Project manager creates To-Do' do
  scenario 'Successfully' do
    visit new_todo_path
    fill_in 'Description', with: 'Meet up with the team'
    click_button 'Save'
    expect( page ).to have_content('Your new To-Do was saved')
    expect( page ).to have_content('Meet up with the team')
  end

  scenario 'With description missing' do
    visit new_todo_path
    click_button 'Save'
    expect( page ).to have_content('There was an error saving your To-Do')
  end
end