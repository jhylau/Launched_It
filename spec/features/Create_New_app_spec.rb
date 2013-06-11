require 'spec_helper'


describe 'app' do 
  describe 'create new app'  do
    it 'bring you to new app form' do 
      visit '/apps'
      click_link 'Enter a new app here!'
      expect(page).to have_content('New app')
    end

    it 'makes sure all information is valid' do 
      prev_count = App.count
      visit '/apps/new'
      fill_in_the_form
      click_button 'Create App'
      expect(App.count).to eql(prev_count + 1)
    end

    it 'does not create a new app if email is invalid' do 
      prev_count = App.count
      visit '/apps/new'
      fill_in_the_form
      fill_in 'Email', :with => "bob"
      click_button 'Create App'
      expect(App.count).to eql(prev_count)
    end

    it 'does not create a new app if title is blank' do 
      prev_count = App.count
      visit '/apps/new'
      fill_in_the_form
      fill_in 'Title', :with => ''
      click_button 'Create App'
      expect(App.count).to eql(prev_count)
    end
  end

  def fill_in_the_form
    fill_in 'Title', :with => 'bob'
    fill_in 'Url', :with => 'www.google.com'
    fill_in 'Codebase url', :with => 'www.code.com'
    fill_in 'Description', :with => 'description'
    fill_in 'Email', :with => 'clemieux598@gmail.com'
  end
end
