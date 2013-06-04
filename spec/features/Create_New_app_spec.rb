require 'spec_helper'


describe 'app' do 
  describe 'create new app', :type => :feature do
    let(:valid_attributes) {

      fill_in 'Title', :with => 'bob'
      fill_in 'Url', :with => 'www.google.com'
      fill_in 'Codebase url', :with => 'www.code.com'
      fill_in 'Description', :with => 'description'
      fill_in 'Email', :with => 'clemieux598@gmail.com'
                               }
  

    it 'bring you to new app form' do 
      visit '/apps'
      click_link 'Enter a new app here!'
      page.should have_content('New app')
    end

    it 'makes sure all information is valid' do 
      prev_count = App.count
      visit '/apps/new'
      valid_attributes
      click_button 'Create App'
      expect(App.count).to eql(prev_count + 1)
    end

    it 'does not create a new app if email is invalid' do 
      prev_count = App.count
      visit '/apps/new'
      valid_attributes
      fill_in 'Email', :with => "bob"
      click_button 'Create App'
      expect(App.count).to eql(prev_count)
    end

    it 'does not create a new app if title is blank' do 
      prev_count = App.count
      visit '/apps/new'
      valid_attributes
      fill_in 'Title', :with => ''
      click_button 'Create App'
      expect(App.count).to eql(prev_count)
    end
  end
end
