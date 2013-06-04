describe Comment do 
  before(:each) do 
    visit '/apps/new'
    create_app
    click_button 'Create App'
  end
  it 'it creates an app if all the proper information is entered' do 
    previous_count = Comment.count
    visit '/apps'
    click_link 'Show'
    fill_in_form
    click_button 'Create Comment'
    expect(Comment.count).to eql(previous_count + 1)
  end

  it 'it will not create comment if email is mission' do 
    previous_count = Comment.count
    visit '/apps'
    click_link 'Show'
    fill_in_form
    fill_in 'Email', :with => ''
    click_button 'Create Comment'
    expect(Comment.count).to eql(previous_count)
  end

  it 'will not create a comment if subject is missing' do 
    previous_count = Comment.count 
    visit '/apps'
    click_link 'Show'
    fill_in_form
    fill_in 'Comment', :with => ''
    click_button 'Create Comment'
    expect(Comment.count).to eql(previous_count)
  end

  def create_app
    fill_in 'Title', :with => 'bob'
    fill_in 'Url', :with => 'www.google.com'
    fill_in 'Codebase url', :with => 'www.code.com'
    fill_in 'Description', :with => 'description'
    fill_in 'Email', :with => 'clemieux598@gmail.com'
  end
  def fill_in_form
    fill_in 'Email', :with => 'yoyo@gmail.com'
    fill_in 'First name', :with => 'Joey'
    fill_in 'Last name', :with => 'Stewbottom'
    fill_in 'Comment', :with => 'what the heck'
  end
end
