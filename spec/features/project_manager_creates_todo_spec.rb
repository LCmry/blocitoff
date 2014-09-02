require 'rails_helper'

feature 'Project manager creates TODO' do
  scenario 'Successfully' do
    visit new_todo_path
    fill_in 'Description', with: 'Meet up with the team'
    click_button 'Save'
    expect( page ).to have_content('Your new TODO was saved')
    expect( page ).to have_content('Meet up with the team')
  end
end