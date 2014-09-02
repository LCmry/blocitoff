require 'rails_helper'

feature 'Project manager creates TODO' do
  scenario 'Successfully' do
    visit new_todo_path
  end
end