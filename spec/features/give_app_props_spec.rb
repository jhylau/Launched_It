require 'spec_helper'




describe 'prop' do
  describe 'Give app props' do 
  before(:each) do 
    visit '/apps/new'
    create_app
    click_button 'Create App'
  end
  it 'will let you give props if an app is created' do
    previous_count = Prop.count
    visit '/'
    click_link 'Show'
    click_button 'Vote for app!'
    expect(Prop.count).to eql(previous_count + 1)
  end

  end
   def create_app
    fill_in 'Title', :with => 'bob'
    fill_in 'Url', :with => 'www.google.com'
    fill_in 'Codebase url', :with => 'www.code.com'
    fill_in 'Description', :with => 'description'
    fill_in 'Email', :with => 'clemieux598@gmail.com'
  end
end